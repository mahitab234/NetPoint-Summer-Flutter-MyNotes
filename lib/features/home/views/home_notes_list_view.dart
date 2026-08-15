import 'package:flutter/material.dart';
import '../widgets/home_note_tile.dart';

class HomeNotesListView extends StatelessWidget{
  const HomeNotesListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => HomeNoteTile(),
        scrollDirection: Axis.vertical,
    );
  }

}