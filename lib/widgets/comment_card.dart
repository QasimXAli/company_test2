import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentCard {
  Widget commentSystem(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(cardBgColor),
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  child: const Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 135, 0),
                  child: Text(
                    'Name Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 0, 30),
                  child: Text(
                    '05-09-2023',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 0, 25, 0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt lectus ligula',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.message,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Reply',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.message,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Replies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Like',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Widget commentUser(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      color: theme.appBarTheme.backgroundColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 20),
                child: Text(
                  '05-09-2023',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
                child: Text(
                  'Name Here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                child: const Icon(Icons.person, size: 45),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
          child: Text(
            'Lorem ipsum dolor sit',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
