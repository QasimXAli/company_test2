import 'package:company_test2/widgets/comment_card.dart';
import 'package:company_test2/widgets/post_card.dart';
import 'package:flutter/material.dart';

class SpamDetailScreen extends StatelessWidget {
  const SpamDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('Spams Detail'),
      ),
      body: Column(children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Image.asset('images/terms.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              PostCard(
                heading: 'Lorem ipsum dolor sit amet',
              ),
              const SizedBox(
                width: 5,
              ),
              CommentCard().commentSystem(context),
              const SizedBox(
                width: 5,
              ),
              CommentCard().commentUser(context),
            ],
          ),
        )
      ]),
    );
  }
}
