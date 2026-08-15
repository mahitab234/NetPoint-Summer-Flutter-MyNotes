import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/models/note_model.dart';
import '../../../core/themes/app_colors.dart';
import '../cubit/note_cubit.dart';
import '../cubit/note_state.dart';
import '../views/note_app_bar_view.dart';
import '../widgets/note_details.dart';

class NoteScreen extends StatelessWidget {
  final NoteModel note;

  const NoteScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NoteCubit(note),
      child: BlocListener<NoteCubit, NoteState>(
        listener: (context, state) {
          if (state is NoteSaved || state is NoteDeleted) {
            Navigator.pop(context);
          }
        },
        child: Scaffold(
          appBar: NoteAppBarView(),
          backgroundColor: AppColors.white,
          body: NoteDetails(),
          resizeToAvoidBottomInset: true,
        ),
      ),
    );
  }
}