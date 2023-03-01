import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key, this.iconName, this.hintText});

  final IconData? iconName;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            child: Icon(
              iconName,
              color: Colors.white,
            ),
          ),
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(cardBgColor),
        ),
      ),
    );
  }
}
