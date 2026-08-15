import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../views/home_app_bar_view.dart';
import '../views/home_notes_list_view.dart';
import '../widgets/home_add_new_fab.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarView(),
      backgroundColor: AppColors.white,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height.h,
        width: MediaQuery.sizeOf(context).width.w,
        child: HomeNotesListView()
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButton: HomeAddNewFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}