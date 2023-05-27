import 'package:flutter/material.dart';
import 'package:noteswithsqflite/screens/notelist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Note App using sqflite",
      debugShowCheckedModeBanner: false,
      home: NoteList(),
    );
  }
}
