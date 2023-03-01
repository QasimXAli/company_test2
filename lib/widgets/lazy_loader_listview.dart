import 'package:company_test2/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class LazyLoaderListview extends StatefulWidget {
  const LazyLoaderListview({super.key});

  @override
  State<LazyLoaderListview> createState() => _LazyLoaderListviewState();
}

bool isLoading = false;
bool isLoadingCards = false;
int itemCount = 5;

class _LazyLoaderListviewState extends State<LazyLoaderListview> {
  @override
  Widget build(BuildContext context) {
    return LazyLoadScrollView(
      isLoading: isLoading,
      onEndOfPage: () {
        if (!isLoading && itemCount < 20) {
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
        itemCount: itemCount,
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
              heading: 'Lorem ipsum',
            );
          }
        },
      ),
    );
  }
}
