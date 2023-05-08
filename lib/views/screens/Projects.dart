import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        titleTextStyle: TextStyle(
          color: colors.white,
          fontSize: h * 0.028,
          fontWeight: FontWeight.w400,
        ),
        centerTitle: true,
        backgroundColor: colors.primary,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: h * 0.03,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: h * 0.89,
            width: w,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: BorderRadius.circular(h * 0.01),
            ),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Title",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      controller: Controllers.projectTitle,
                      cursorColor: colors.primary,
                      onSaved: (title) {
                        info.projectTitle = title;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Project Title";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.primary,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        hintText: "Resume Builder App",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Technologies",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: CheckBox.c,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.c = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "C Programming",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: CheckBox.cpp,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.cpp = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "C++",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: CheckBox.flutter,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.flutter = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "Flutter",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Roles",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      controller: Controllers.roles,
                      cursorColor: colors.primary,
                      maxLines: 2,
                      onSaved: (roles) {
                        info.roles = roles;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your Role";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.primary,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        hintText: "Organized team member, Code analysis",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Team Members",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      controller: Controllers.teamMembers,
                      cursorColor: colors.primary,
                      onSaved: (team) {
                        info.teamMembers = team;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Team Members";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.primary,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        hintText: "5 - Programmers",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Project Description",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      controller: Controllers.projectDescription,
                      cursorColor: colors.primary,
                      onSaved: (des) {
                        info.projectDescription = des;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Project Description";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.primary,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(h * 0.01),
                          borderSide: BorderSide(
                            color: colors.red,
                          ),
                        ),
                        hintText: "Enter your Project Description",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(colors.primary),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();

                                  ScaffoldMessenger.of(context)
                                    ..removeCurrentSnackBar()
                                    ..showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                          "Successfully Validated...",
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: colors.green,
                                        duration: const Duration(seconds: 4),
                                      ),
                                    );
                                } else {
                                  ScaffoldMessenger.of(context)
                                    ..removeCurrentSnackBar()
                                    ..showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                          "Please enter Projects details...",
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: colors.red,
                                        duration: const Duration(seconds: 4),
                                      ),
                                    );
                                }
                              },
                            );
                          },
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              color: colors.white,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStatePropertyAll(
                              BorderSide(
                                color: colors.primary,
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              formKey.currentState!.reset();
                              Controllers.projectTitle.clear();
                              CheckBox.c = false;
                              CheckBox.cpp = false;
                              CheckBox.flutter = false;
                              Controllers.roles.clear();
                              Controllers.teamMembers.clear();
                              Controllers.projectDescription.clear();
                            });
                          },
                          child: Text(
                            'RESET',
                            style: TextStyle(color: colors.primary),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: colors.bgColor,
    );
  }
}