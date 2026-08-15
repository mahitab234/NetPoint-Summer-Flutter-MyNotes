import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class NoteModificationDate extends StatelessWidget {
  final DateTime modifiedAt;

  const NoteModificationDate({super.key, required this.modifiedAt});

  String _format(DateTime dt) {
    final now = DateTime.now();
    final isToday =
        dt.year == now.year && dt.month == now.month && dt.day == now.day;

    final hour = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final minute = dt.minute.toString().padLeft(2, '0');
    final period = dt.hour >= 12 ? 'PM' : 'AM';
    final time = '$hour:$minute $period';

    if (isToday) return 'Modified at: Today $time';

    final yesterday = now.subtract(const Duration(days: 1));
    final isYesterday = dt.year == yesterday.year &&
        dt.month == yesterday.month &&
        dt.day == yesterday.day;
    if (isYesterday) return 'Modified at: Yesterday $time';

    return 'Modified at: ${dt.day}/${dt.month}/${dt.year} $time';
  }

  @override
  Widget build(BuildContext context) {
    return Text(_format(modifiedAt), style: AppTextStyles.caption);
  }
}