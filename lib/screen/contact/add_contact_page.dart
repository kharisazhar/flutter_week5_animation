import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  List<String> listContact;

  AddContactPage({Key? key, required this.listContact}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  String? contactName;

  final TextEditingController _contactNameController = TextEditingController();

  final TextEditingController _contactNumberController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _contactNameController.addListener(() {
      debugPrint("ADD_LISTENER ${_contactNameController.text}");
    });
  }

  void _validateInput(BuildContext context) {
    if (_contactNameController.text.isEmpty &&
        _contactNumberController.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Mohon masukan Nama & Number"),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.pop(context), child: Text("OK"))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Contact")),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  controller: _contactNameController,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {
                    contactName = value;
                    debugPrint("INPUT USERS : $value");
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Contact'),
                  controller: _contactNumberController,
                  onFieldSubmitted: (value) {
                    debugPrint("INPUT USERS : $value");
                  },
                ),
                const SizedBox(height: 22.0),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              _validateInput(context);
                              widget.listContact.add(contactName ?? '');
                              Navigator.pop(context, widget.listContact);
                            },
                            child: const Text("Save")))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
