import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../cubit/note_cubit.dart';
import '../cubit/note_state.dart';
import 'note_body.dart';
import 'note_title.dart';
import 'note_modification_date.dart';

class NoteDetails extends StatefulWidget {
  const NoteDetails({super.key});

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    final note = context.read<NoteCubit>().note;
    _titleController = TextEditingController(text: note.title);
    _bodyController = TextEditingController(text: note.body);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        if (state is! NoteEditing) return const SizedBox.shrink();

        return Container(
          alignment: AlignmentGeometry.topStart,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(
              style: BorderStyle.solid,
              width: 1.w,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          height: (MediaQuery.sizeOf(context).height) - 120.h,
          margin: EdgeInsets.all(10.sp),
          padding: EdgeInsets.all(10.sp),
          width: MediaQuery.sizeOf(context).width.w,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15.h,
              children: [
                NoteTitle(
                  controller: _titleController,
                  onChanged: (val) => context.read<NoteCubit>().updateTitle(val),
                ),
                NoteModificationDate(modifiedAt: state.note.modifiedAt),
                Divider(color: AppColors.primary, thickness: 1.h),
                NoteBody(
                  controller: _bodyController,
                  onChanged: (val) => context.read<NoteCubit>().updateBody(val),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}