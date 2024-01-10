import 'package:flutter/material.dart';
import 'styles.dart';

class MyBottomNavigationBar extends StatelessWidget {

  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.star, color: Styles.iconColor),
              Text('Favorites', style: TextStyle(color: Styles.textColor)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.access_time_filled, color: Styles.iconColor),
              Text('Recents', style: TextStyle(color: Styles.textColor)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.account_circle_sharp, color: Colors.blue),
              Text('Contacts', style: TextStyle(color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.keyboard_alt, color: Styles.iconColor),
              Text('Keypad', style: TextStyle(color: Styles.textColor)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.voicemail, color: Styles.iconColor),
              Text('Voicemail', style: TextStyle(color: Styles.textColor)),
            ],
          ),
        ],
      ),
    );
  }
}
