import 'package:company_test2/constants.dart';
import 'package:company_test2/views/comments_screen.dart';
import 'package:company_test2/views/contactus_screen.dart';
import 'package:company_test2/views/login_screen.dart';
import 'package:company_test2/views/my_profile_screen.dart';
import 'package:company_test2/views/mypost_screen.dart';
import 'package:company_test2/views/spam_details_screen.dart';
import 'package:company_test2/views/spam_screen.dart';
import 'package:company_test2/views/submit_offer_screen.dart';
import 'package:company_test2/views/terms_screen.dart';
import 'package:company_test2/views/upgrade_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      lightTheme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(primaryColor),
        ),
        cardColor: const Color(primaryColor),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(primaryColor),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(secondthemeColor),
        ),
        cardColor: const Color(secondthemeColor),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(secondthemeColor),
        ),
      ),
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        initialRoute: '/SpamScreen',
        routes: {
          '/': (context) => const LoginScreen(), //done
          '/MyPostScreen': (context) => const MyPostScreen(), //done
          '/ContactUsScreen': (context) => const ContactUsScreen(), //done
          '/CommentsScreen': (context) => const CommentsScreen(), //done
          '/MyProfileScreen': (context) => const MyProfileScreen(), //done
          '/SpamDetailScreen': (context) => const SpamDetailScreen(),
          '/SpamScreen': (context) => SpamScreen(), //done
          '/SubmitOfferScreen': (context) => const SubmitOfferScreen(), //done
          '/TermsScreen': (context) => const TermsScreen(), //done
          '/UpgradeAccountScreen': (context) =>
              const UpgradeAccountScreen(), //done
        },
      ),
    );
  }
}
