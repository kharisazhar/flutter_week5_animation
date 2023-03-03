import 'package:flutter/material.dart';
import 'package:flutter_week5_animation/screen/contact/add_contact_page.dart';

class ListContactPage extends StatefulWidget {
  const ListContactPage({Key? key}) : super(key: key);

  @override
  State<ListContactPage> createState() => _ListContactPageState();
}

class _ListContactPageState extends State<ListContactPage> {
  List<String> contactList = ["John", "Benny", "George", "Paul"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: contactList.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(contactList[index]),
                    subtitle: Text(contactList[index]));
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  /// Without Transition
                  Navigator.of(context)
                      .push(MaterialPageRoute<List<String>>(
                          builder: (_) =>
                              AddContactPage(listContact: contactList)))
                      .then((updatedContactList) {
                    setState(() {
                      contactList = updatedContactList ?? [];
                    });
                  });

                  /// With Animation
                  // Navigator.of(context).push(altaPageRouteBuilder(
                  //     page: AddContactPage(), routeName: 'contact'));
                }),
          ),
        )
      ],
    );
  }
}
