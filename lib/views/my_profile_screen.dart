import 'package:company_test2/widgets/post_card.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          centerTitle: true,
          title: const Text('My Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset(
                    'images/terms.jpg',
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 20,
                  child: FittedBox(
                    child: Image.asset(
                      'images/profile.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'About Me',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt lectus ligula, vel vulputate sapien malesuada ut.Donec id massa blandit, feugiat ex sit amet, fermentum tellus.Sed gravida eleifend tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris bibendum tincidunt mauris vitae feugiat.',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Recent Activity',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: PostCard(
                heading: 'Lorem ipsum dolor sit amet,',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
