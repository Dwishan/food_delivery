import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_register_page.dart';
import 'package:food_delivery/components/drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.food_bank_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          //divider
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          //settings tile
          MyDrawerTile(
            icon: Icons.settings,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
            text: "Settings",
          ),
          const Spacer(),
          //logout tile
          MyDrawerTile(
            icon: Icons.logout_rounded,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginOrRegisterPage())),
            text: "Logout",
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
