// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';

class info {
  static String? name;
  static String? email;
  static String? contactNo;
  static String? add1;
  static String? add2;
  static String? add3;
  static String? dateOfBirth;
  static String? carrierObjective;
  static String? currentDesignations;
  static String? degree;
  static String? institute;
  static String? percentage;
  static String? passingYear;
  static String? companyName;
  static String? workPosition;
  static String? role;
  static String? joined;
  static String? exit;
  static String? projectTitle;
  static String? roles;
  static String? teamMembers;
  static String? projectDescription;
  static String? referenceName;
  static String? referDesignation;
  static String? referOrganization;
  static File? image;
  static List techSkill = ['', ''];
  static List interest = ['', ''];
  static List achievements = ['', ''];
  static String? description;
  static String? declarationDate;
  static String? place;
}

class Controllers {
  static TextEditingController name = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController contactNo = TextEditingController();
  static TextEditingController add1 = TextEditingController();
  static TextEditingController add2 = TextEditingController();
  static TextEditingController add3 = TextEditingController();
  static TextEditingController dateOfBirth = TextEditingController();
  static TextEditingController carrierObjective = TextEditingController();
  static TextEditingController currentDesignations = TextEditingController();
  static TextEditingController degree = TextEditingController();
  static TextEditingController institute = TextEditingController();
  static TextEditingController percentage = TextEditingController();
  static TextEditingController passingYear = TextEditingController();
  static TextEditingController companyName = TextEditingController();
  static TextEditingController workPosition = TextEditingController();
  static TextEditingController role = TextEditingController();
  static TextEditingController joined = TextEditingController();
  static TextEditingController exit = TextEditingController();
  static TextEditingController projectTitle = TextEditingController();
  static TextEditingController roles = TextEditingController();
  static TextEditingController teamMembers = TextEditingController();
  static TextEditingController projectDescription = TextEditingController();
  static TextEditingController referenceName = TextEditingController();
  static TextEditingController referDesignation = TextEditingController();
  static TextEditingController referOrganization = TextEditingController();
  static List<TextEditingController> techSkill = [
    TextEditingController(),
    TextEditingController()
  ];
  static List<TextEditingController> interest = [
    TextEditingController(),
    TextEditingController()
  ];
  static List<TextEditingController> achievements = [
    TextEditingController(),
    TextEditingController()
  ];
  static TextEditingController description = TextEditingController();
  static TextEditingController declarationDate = TextEditingController();
  static TextEditingController place = TextEditingController();
}

class CheckBox {
  static bool english = false;
  static bool hindi = false;
  static bool gujarati = false;
  static bool c = false;
  static bool cpp = false;
  static bool flutter = false;
}

class radioButtons {
  static int marital = 0;
  static int gender = 0;
  static int employed = 1;
}

class Switches {
  static bool declaration = false;
}

class colors {
  static Color primary = const Color(0xff000000);
  static Color white = const Color(0xffffffff);
  static Color grey = const Color(0xff999999);
  static Color red = const Color(0xffff0000);
  static Color green = const Color(0xff149900);
  static Color bgColor = Colors.grey.shade200;

  static Color male = const Color(0xff999999);
  static Color female = const Color(0xff999999);
  static Color other = const Color(0xff999999);

  static Color married = const Color(0xff999999);
  static Color single = const Color(0xff999999);

  static Color previous = const Color(0xff999999);
  static Color currently = const Color(0xff999999);
}

class countryName {
  static List country = [
    'Brazilian',
    'Canadian',
    'Chinese',
    'French',
    'German',
    'Indian',
    'Japanese',
    'Turkish',
    'British',
    'American'
  ];

  static String? chooseValue;
}
