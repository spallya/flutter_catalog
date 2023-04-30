import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class CatalogAppDrawer extends StatelessWidget {
  CatalogAppDrawer({super.key});

  String imageUrl =
      "https://media.licdn.com/dms/image/C4D03AQEzzE3NLqAWPQ/profile-displayphoto-shrink_800_800/0/1627361344330?e=2147483647&v=beta&t=cQ-6MZywVxq6v7BtETTkLM4X4tMog1LJ1JlF50381CE";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo.shade400),
                accountName: const Text("Spallya Omar"),
                accountEmail: const Text("spallya@outlook.com"),
                margin: EdgeInsets.zero,
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.indigo.shade400),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.indigo.shade400),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.indigo.shade400),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.indigo.shade400),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.indigo.shade400),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.indigo.shade400),
              )),
          ListTile(
            leading: Icon(Icons.login, color: Colors.indigo.shade400),
            title: Text(
              "Login",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.indigo.shade400),
            ),
            onTap: () {
              Navigator.pushNamed(context, CatalogAppRoutes.loginRoute);
            },
          )
        ],
      ),
    );
  }
}
