import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({super.key});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  static var _priorities = ["High", "Low"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    debugPrint("User selected $value");
                  });
                },
                value: "Low",
              ),
            ),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: const TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onChanged: (value) {
                debugPrint("Something changed in Title Text Field $value");
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: descriptionController,
              minLines: 6,
              maxLines: 15,
              decoration: InputDecoration(
                labelText: "Description",
                labelStyle: const TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onChanged: (value) {
                debugPrint("Something changed in Description Text Field");
              },
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Save")),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Delete")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
