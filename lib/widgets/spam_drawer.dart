import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

class SpamDrawer extends StatelessWidget {
  const SpamDrawer({super.key});

  final bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        backgroundColor: const Color.fromARGB(150, 0, 0, 0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                children: [
                  FittedBox(
                    child: Image.asset(
                      'images/profile.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  const Text(
                    'Name Here',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'XYZ',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/MyPostScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('My Profile',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/MyProfileScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('Submit Offer',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/SubmitOfferScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('Spams',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/SpamScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('Upgrade Account',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/UpgradeAccountScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('Contact Us',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/ContactUsScreen');
                    },
                  ),
                  ListTile(
                    title: const Text('Terms and Policies',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/TermsScreen');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: SizedBox(
                      height: 30,
                      width: 120,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).appBarTheme.backgroundColor,
                        ),
                        onPressed: () {
                          getThemeManager(context).toggleDarkLightTheme();
                          isEnable == true;
                        },
                        icon: const Icon(Icons.light_mode_rounded),
                        label: const Text(
                          'Swtich Theme',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    leading: Icon(
                      Icons.logout,
                      color: Theme.of(context).appBarTheme.backgroundColor,
                    ),
                    title: const Text('Logout',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
