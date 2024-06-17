import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';

class MyNotesScreen extends StatefulWidget {
  const MyNotesScreen({super.key});

  @override
  State<MyNotesScreen> createState() => _MyNotesState();
}

class _MyNotesState extends State<MyNotesScreen> {
  TextEditingController notes = TextEditingController();
  Map<String, String> notesData = {};
  @override
  void initState() {
    super.initState();
    if (notesData['data'] != null) {
      notes.text = notesData['data'].toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            onPressed: () {
              notesData['data'] = notes.text;
              // print(notesData['data']);
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            )),
        title: const Text(
          AppStrings.notes,
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                maxLines: null,
                controller: notes,
                decoration: const InputDecoration(
                  hintText: AppStrings.typeSomething,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
