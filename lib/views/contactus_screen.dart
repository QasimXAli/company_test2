import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  filled: true,
                  fillColor: const Color(cardBgColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  filled: true,
                  fillColor: const Color(cardBgColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Message',
                  contentPadding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  filled: true,
                  fillColor: const Color(cardBgColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'SUMBIT',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
