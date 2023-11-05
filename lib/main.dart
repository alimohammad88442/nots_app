import 'package:flutter/material.dart';
import 'package:notsapp/views/notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        NotesView.id: (context) => NotesView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
