import 'package:company_test2/constants.dart';
import 'package:flutter/material.dart';

class SubmitOfferScreen extends StatelessWidget {
  const SubmitOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text('SUBMIT OFFER'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                FittedBox(
                  child: Image.asset('images/terms.jpg'),
                ),
                Positioned(
                  left: 130,
                  top: 150,
                  child: FittedBox(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      child: const Icon(Icons.person, size: 120),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 280),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Spam Detail',
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 20, 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      filled: true,
                      fillColor: const Color(cardBgColor),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: 'Discription here ....',
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      filled: true,
                      fillColor: const Color(cardBgColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.11),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
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
    );
  }
}
