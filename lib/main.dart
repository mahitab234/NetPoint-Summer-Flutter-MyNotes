import 'package:flutter/material.dart';
import 'core/repositories/note_repository.dart';
import 'features/home/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await NotesRepository.instance.init();

  runApp(const MyNotes());
  FlutterNativeSplash.remove();
}

class MyNotes extends StatelessWidget {
  const MyNotes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          home: HomeScreen(),
          title: 'My Notes',
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}