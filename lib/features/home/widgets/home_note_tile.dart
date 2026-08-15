import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/models/note_model.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../cubit/notes_cubit.dart';
import '../../note/screens/note_screen.dart';

class HomeNoteTile extends StatelessWidget {
  final NoteModel note;

  const HomeNoteTile({super.key, required this.note});

  String _shortTime(DateTime dt) {
    final now = DateTime.now();
    final isToday =
        dt.year == now.year && dt.month == now.month && dt.day == now.day;
    final hour = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final minute = dt.minute.toString().padLeft(2, '0');
    final period = dt.hour >= 12 ? 'PM' : 'AM';
    if (isToday) return '$hour:$minute $period';
    return '${dt.day}/${dt.month}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: ListTile(
        title: Text(note.title.isEmpty ? 'Untitled' : note.title),
        titleTextStyle: AppTextStyles.labelLarge,
        subtitle: Text(
          note.body.isEmpty ? 'No content' : note.body,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitleTextStyle: AppTextStyles.caption,
        trailing: Text(_shortTime(note.modifiedAt), style: AppTextStyles.caption),
        shape: Border(
          bottom: BorderSide(
            style: BorderStyle.solid,
            width: 1.w,
            color: AppColors.black,
          ),
        ),
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NoteScreen(note: note)),
          );
          if (context.mounted) {
            context.read<NotesCubit>().loadNotes();
          }
        },
      ),
    );
  }
}