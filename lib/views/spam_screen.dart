import 'package:company_test2/constants.dart';
import 'package:company_test2/widgets/lazy_loader_listview.dart';
import 'package:company_test2/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class SpamScreen extends StatefulWidget {
  SpamScreen({super.key});

  @override
  State<SpamScreen> createState() => _SpamScreenState();
}

class _SpamScreenState extends State<SpamScreen> {
  TextEditingController searchController = TextEditingController();

  void onSearchTextChanged(String searchText) {
    setState(() {
      filteredPosts = _allPosts
          .where((post) =>
              post.heading.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  List<PostCard>? filteredPosts;

  final List<PostCard> _allPosts = [
    PostCard(
      heading: 'Lorem ipsum dolor sit amet',
    ),
    PostCard(
      heading: 'Sed do eiusmod tempor incididunt',
    ),
    PostCard(
      heading: 'Ut enim ad minim veniam',
    ),
    PostCard(
      heading: 'Duis aute irure dolor in reprehenderit',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('Spams'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            searchBox(
              value: searchController,
              onTextChanged: (string) {
                onSearchTextChanged(searchController.value.toString());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: LazyLoaderListview()),
          ],
        ),
      ),
    );
  }
}

Widget searchBox(
    {required TextEditingController value,
    required Function(String) onTextChanged}) {

  return OutlineSearchBar(
    backgroundColor: const Color(cardBgColor),
    textEditingController: value,
    onKeywordChanged: onTextChanged,
    elevation: 5,
    searchButtonPosition: SearchButtonPosition.leading,
    searchButtonIconColor: Colors.grey[500],
    hintText: 'Search',
    hintStyle: TextStyle(
      color: Colors.grey[400],
    ),
    borderColor: Colors.transparent,
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
  );
}
