import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../cubit/notes_cubit.dart';
import '../cubit/notes_state.dart';
import '../views/home_app_bar_view.dart';
import '../views/home_notes_list_view.dart';
import '../widgets/home_add_new_fab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NotesCubit()..loadNotes(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarView(),
      backgroundColor: AppColors.white,
      body: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          if (state is NotesLoaded) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height.h,
              width: MediaQuery.sizeOf(context).width.w,
              child: HomeNotesListView(notes: state.notes),
            );
          }
          return const SizedBox.shrink();
        },
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButton: const HomeAddNewFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}