import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          centerTitle: true,
          title: const Text('Terms and Policy'),
        ),
        body: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset('images/terms.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'OUR TERMS',
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt lectus ligula, vel vulputate sapien malesuada ut.Donec id massa blandit, feugiat ex sit amet, fermentum tellus.',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sed gravida eleifend tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris bibendum tincidunt mauris vitae feugiat.',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Proin posuere magna quis magna pretium vehicula quis nec odio. Morbi vestibulum, orci nec blandit bibendum, elit felis consectetur enim, vitae fringilla urna leo eget nibh. Maecenas ullamcorper velit ac mauris lacinia, at placerat sapien porta.',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
