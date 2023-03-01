import 'package:company_test2/constants.dart';
import 'package:company_test2/widgets/custom_fb_button.dart';
import 'package:company_test2/widgets/login_textfields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/loginlogo.png', height: 150),
          const SizedBox(
            height: 30,
          ),
          const LoginTextField(
            hintText: 'Username',
            iconName: Icons.account_circle,
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginTextField(
            hintText: '* * * * * * *',
            iconName: Icons.lock_open_rounded,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/MyPostScreen', (route) => false);
              },
              child: const Text('Login'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
          CustomWidgets.socialButtonRect(
            'Login with Facebook',
            facebookColor,
            FontAwesomeIcons.facebookF,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
