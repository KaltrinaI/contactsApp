import 'package:flutter/material.dart';
import 'contact.dart';
import 'bottom_navigation_bar.dart';
import 'styles.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;
  ContactDetailsScreen({required this.contact});
 
  Widget coloredContainer(Widget child) {
    return Container(
      color: const Color.fromARGB(255, 40, 39, 39),
      padding: const EdgeInsets.all(16.0),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Styles.iconColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 84, 84, 84),
                    image: DecorationImage(
                      image:
                          AssetImage(contact.imagePath ?? 'assets/default.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  contact.name,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Styles.textColor),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50.0,
                      height: 30.0,
                      color: const Color.fromARGB(255, 84, 84, 84),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.messenger_sharp,
                            color: Styles.iconColor,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      color: const Color.fromARGB(255, 84, 84, 84),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Styles.iconColor,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      color: const Color.fromARGB(255, 84, 84, 84),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Styles.iconColor,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 30.0,
                      color: const Color.fromARGB(255, 84, 84, 84),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: Styles.iconColor,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            color: const Color.fromARGB(255, 40, 39, 39),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'mobile: ${contact.phoneNumber}',
              style: const TextStyle(color: Styles.textColor),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            color: const Color.fromARGB(255, 40, 39, 39),
            padding: const EdgeInsets.all(16.0),
            child: const Row(
              children: [
                Text(
                  'FaceTime',
                  style: TextStyle(color: Styles.textColor),
                ),
                Spacer(), // Add a Spacer to push the icons to the right
                Icon(Icons.videocam_sharp, color: Colors.blue),
                SizedBox(
                    width:
                        10.0), // Adjust the width based on your desired space
                Icon(Icons.phone, color: Colors.blue),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          // Add other containers with text as needed
          Container(
            color: const Color.fromARGB(255, 40, 39, 39),
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Block this caller',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
