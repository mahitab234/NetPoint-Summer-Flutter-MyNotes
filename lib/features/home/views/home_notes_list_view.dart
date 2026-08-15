import 'package:flutter/material.dart';
import '../../../core/models/note_model.dart';
import '../widgets/home_note_tile.dart';

class HomeNotesListView extends StatelessWidget {
  final List<NoteModel> notes;

  const HomeNotesListView({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    if (notes.isEmpty) {
      return const Center(child: Text('No notes yet. Tap + to add one.'));
    }
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) => HomeNoteTile(note: notes[index]),
      scrollDirection: Axis.vertical,
    );
  }
}