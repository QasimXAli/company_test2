import 'package:company_test2/constants.dart';
import 'package:company_test2/widgets/post_card.dart';
import 'package:company_test2/widgets/spam_drawer.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class MyPostScreen extends StatefulWidget {
  const MyPostScreen({super.key});

  @override
  State<MyPostScreen> createState() => _MyPostScreen();
}

class _MyPostScreen extends State<MyPostScreen> {
  List<PostCard> _filteredPosts = [];

  String? searchValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('My Post'),
      ),
      drawer: const SpamDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            searchBox(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: LazyLoaderListview(
                value: searchValue,
                filteredPosts: _filteredPosts,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void filterPosts(String query) {
    setState(() {
      _filteredPosts = _allPosts
          .where((post) =>
              post.heading.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget searchBox() {
    return OutlineSearchBar(
      backgroundColor: const Color(cardBgColor),
      onKeywordChanged: (value) {
        setState(() {
          searchValue = value;
          filterPosts(value);
        });
      },
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
}

class LazyLoaderListview extends StatefulWidget {
  String? value;

   LazyLoaderListview(
      {super.key, required this.value, required this.filteredPosts});

  List<PostCard> filteredPosts;

  @override
  State<LazyLoaderListview> createState() => _LazyLoaderListviewState();
}

bool isLoading = false;
bool isLoadingCards = false;
int itemCount = 5;

List<PostCard> _allPosts = [
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'Sed do eiusmod tempor',
  ),
  PostCard(
    heading: 'Ut enim ad minim',
  ),
  PostCard(
    heading: 'Duis aute irure dolor',
  ),
  PostCard(
    heading: 'consectetur adipiscing elit',
  ),
  PostCard(
    heading: 'voluptate velit esse cillum',
  ),
  PostCard(
    heading: 'officia deserunt mollit',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'tempor incididunt ut',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
  PostCard(
    heading: 'Lorem ipsum dolor sit amet',
  ),
];

class _LazyLoaderListviewState extends State<LazyLoaderListview> {
  @override
  void initState() {
    super.initState();
    widget.filteredPosts = List<PostCard>.from(_allPosts);
  }

  @override
  Widget build(BuildContext context) {
    return LazyLoadScrollView(
      isLoading: isLoading,
      onEndOfPage: () {
        if (!isLoading && itemCount < 14) {
          setState(() {
            isLoading = true;
            isLoadingCards = true;
          });
          Future.delayed(const Duration(seconds: 3), () {
            setState(() {
              itemCount += 5;
              isLoading = false;
              isLoadingCards = false;
            });
          });
        }
      },
      scrollOffset: 100,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: widget.value == null
            ? itemCount <= widget.filteredPosts.length
                ? itemCount
                : widget.filteredPosts.length
            : widget.filteredPosts.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == itemCount - 1 && isLoadingCards) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Loading...')
                ],
              ),
            );
          } else {
            return PostCard(
              heading: widget.filteredPosts[index].heading,
            );
          }
        },
      ),
    );
  }
}
