import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/models/note_model.dart';
import '../../../core/themes/app_colors.dart';
import '../cubit/notes_cubit.dart';
import '../../note/screens/note_screen.dart';

class HomeAddNewFab extends StatelessWidget {
  const HomeAddNewFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final newNote = NoteModel.empty();
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => NoteScreen(note: newNote)),
        );
        if (context.mounted) {
          context.read<NotesCubit>().loadNotes();
        }
      },
      backgroundColor: AppColors.primary,
      child: Icon(
        Icons.add,
        color: AppColors.white,
        size: 30.sp,
        semanticLabel: "Add Note",
      ),
    );
  }
}