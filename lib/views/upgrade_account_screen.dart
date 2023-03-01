import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';

class UpgradeAccountScreen extends StatelessWidget {
  const UpgradeAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('Upgrade Account'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(cardBgColor),
              child: Column(
                children: [
                  Image.asset(
                    'images/cardvisa.png',
                    height: 200,
                    width: 300,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'images/visalogo.png',
                          ),
                        ),
                        hintText: '12345  12345  12345',
                        contentPadding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        filled: true,
                        fillColor: const Color(cardBgColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Security Code (CCV)'),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('CANCEL'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('DONE'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
