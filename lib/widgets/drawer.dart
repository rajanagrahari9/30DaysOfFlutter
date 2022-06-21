import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageUrl =
        "https://play-lh.googleusercontent.com/En0LDf-crVYJzh_uhVhhhjksBRwEzXCdbP_aJH-Lil_ufa_J0K_GbV0Rk8jqxA281_U";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Rajan Agrahari"),
                accountEmail:const Text("rajan972001@gmail.com"),
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            )
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home, 
                color: Colors.white),
              title: Text(
                "Home", 
                textScaleFactor: 1.2,
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, 
                color: Colors.white),
              title: Text(
                "Profile", 
                textScaleFactor: 1.2,
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail, 
                color: Colors.white),
              title: Text(
                "Email me", 
                textScaleFactor: 1.2,
                style: TextStyle(
                color: Colors.white,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
