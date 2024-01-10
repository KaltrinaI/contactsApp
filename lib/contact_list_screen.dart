import 'package:flutter/material.dart';
import 'contact.dart';
import 'contact_details_screen.dart';
import 'bottom_navigation_bar.dart';
import 'styles.dart';

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact(
        name: 'John Doe',
        phoneNumber: '123-456-789',
        imagePath: 'assets/test1.png',
        email: 'johndoe@gmail.com'),
    Contact(
        name: 'Jane Doe',
        phoneNumber: '987-654-322',
        imagePath: 'assets/test2.png'),
    Contact(
        name: 'Chris Brown',
        phoneNumber: '111-222-333',
        email: 'cbrown@gmail.com'),
    Contact(
        name: 'Gracie Abrams',
        phoneNumber: '122-476-989',
        imagePath: 'assets/test3.png'),
    Contact(
        name: 'Sean Paul',
        phoneNumber: '558-666-123',
        imagePath: 'assets/test4.png'),
    Contact(
        name: 'Taylor Swift',
        phoneNumber: '131-313-131',
        imagePath: 'assets/test1.png'),
    Contact(name: 'Selena Gomez', phoneNumber: '120-406-709'),
    Contact(
        name: 'Abel Tesfaye',
        phoneNumber: '135-246-000',
        imagePath: 'assets/test2.png'),
    Contact(
        name: 'Ariana Grande',
        phoneNumber: '100-220-333',
        imagePath: 'assets/test3.png'),
    Contact(
        name: 'Lana Del Rey',
        phoneNumber: '144-576-089',
        imagePath: 'assets/test4.png',
        email: 'ldr@gmail.com'),
    Contact(
        name: 'Olivia Rodrigo',
        phoneNumber: '258-369-147',
        email: 'orodrigo@gmail.com'),
    Contact(
        name: 'Bon Iver',
        phoneNumber: '245-542-289',
        imagePath: 'assets/test1.png'),
  ];

  List<Contact> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    contacts.sort((a, b) => a.name.compareTo(b.name));
    filteredContacts.addAll(contacts);
  }

  void filterContacts(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredContacts = contacts
          .where((contact) => contact.name.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts', style: TextStyle(color: Styles.textColor)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterContacts,
              style: const TextStyle(color: Styles.textColor),
              decoration: const InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(color: Styles.textColor),
                prefixIcon: Icon(Icons.search, color:Styles.iconColor),
                suffixIcon: Icon(Icons.mic, color:Styles.iconColor),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    filteredContacts[index].name,
                    style: const TextStyle(color: Styles.textColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetailsScreen(
                          contact: filteredContacts[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
