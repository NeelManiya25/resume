import 'package:flutter/material.dart';
import 'package:resume/utils/PathName.dart';
import 'package:resume/views/screens/Achievements.dart';
import 'package:resume/views/screens/CarrierObjective.dart';
import 'package:resume/views/screens/ContactInfo.dart';
import 'package:resume/views/screens/Declaration.dart';
import 'package:resume/views/screens/Education.dart';
import 'package:resume/views/screens/Experiences.dart';
import 'package:resume/views/screens/Hobbies.dart';
import 'package:resume/views/screens/PersonalDetalis.dart';
import 'package:resume/views/screens/Projects.dart';
import 'package:resume/views/screens/References.dart';
import 'package:resume/views/screens/SlideActionPage.dart';
import 'package:resume/views/screens/HomePage.dart';
import 'package:resume/views/screens/TechnicalSkills.dart';
import 'package:resume/views/screens/WorkSpace.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SlideActionPage(),
        'HomePage': (context) => const HomePage(),
        'WorkSpace': (context) => const ResumeWorkSpace(),
        paths[0]['page']: (context) => const ContactInfo(),
        paths[1]['page']: (context) => const CarrierObjective(),
        paths[2]['page']: (context) => const PersonalDetails(),
        paths[3]['page']: (context) => const Education(),
        paths[4]['page']: (context) => const Experiences(),
        paths[5]['page']: (context) => const TechnicalSkills(),
        paths[6]['page']: (context) => const Hobbies(),
        paths[7]['page']: (context) => const Projects(),
        paths[8]['page']: (context) => const Achievements(),
        paths[9]['page']: (context) => const References(),
        paths[10]['page']: (context) => const Declaration(),
      },
    );
  }
}

