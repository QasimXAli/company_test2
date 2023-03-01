import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class PostCard extends StatefulWidget {
  PostCard({super.key, required this.heading});

  late String heading;
  @override
  State<PostCard> createState() => _PostCardState();
}

void _onShare(BuildContext context) async {
  final box = context.findRenderObject() as RenderBox?;
  await Share.share(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt lectus ligula, vel vulputate sapien malesuada ut. Donec id massa blandit, feugiat ex sit amet, fermentum tell us',
      subject: 'www.deviate.com',
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
}

class _PostCardState extends State<PostCard> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.235,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        color: const Color(cardBgColor),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelect = !isSelect;
                  });
                },
                child: Container(
                  height: 30,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: isSelect
                        ? Theme.of(context).appBarTheme.backgroundColor
                        : Colors.grey,
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.star,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text(
                    widget.heading,
                    style: const TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(cardBgColor),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, spreadRadius: 0.2),
                      ],
                    ),
                    height: 20,
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        '10 views',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt lectus ligula, vel vulputate sapien malesuada ut. Donec id massa blandit, feugiat ex sit amet, fermentum tell us',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 2,
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            'LIKE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/CommentsScreen');
                      },
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
                            'Comment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _onShare(context);
                      },
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.share,
                            color: Colors.grey[400],
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'SHARE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
