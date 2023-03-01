import 'package:company_test2/constants.dart';
import 'package:company_test2/widgets/comment_card.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('Comments'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CommentCard().commentSystem(context),
                  const SizedBox(
                    height: 10,
                  ),
                  CommentCard().commentUser(context),
                  const SizedBox(
                    height: 10,
                  ),
                  CommentCard().commentSystem(context),
                  const SizedBox(
                    height: 10,
                  ),
                  CommentCard().commentUser(context),
                  const SizedBox(
                    height: 10,
                  ),
                  CommentCard().commentUser(context),
                  const SizedBox(
                    height: 10,
                  ),
                  CommentCard().commentUser(context),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: const Color(cardBgColor),
              width: double.infinity,
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type your messages ...',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                          ),
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'SEND',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


    //     IconButton(
                        //       onPressed: () {},
                        //       icon: FaIcon(FontAwesomeIcons.plus),
                        //     ),
                        //  const SizedBox(
                        //       width: 5,
                        //     ),
                        //     const Text(
                        //       'SEND',
                        //       style: TextStyle(
                        //         color: Colors.black87,
                        //       ),
                        //     )