import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
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
            height: h * 0.65,
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
                      "Course/Degree",
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
                      controller: Controllers.degree,
                      cursorColor: colors.primary,
                      onSaved: (qua) {
                        info.degree = qua;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Qualification";
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
                        hintText: "B.Tech Information Technology",
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
                      "School/College/Institute",
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
                      controller: Controllers.institute,
                      cursorColor: colors.primary,
                      onSaved: (institute) {
                        info.institute = institute;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your Institute name";
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
                        hintText: "IIT Mumbai",
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
                      "Percentage",
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
                      controller: Controllers.percentage,
                      cursorColor: colors.primary,
                      onSaved: (per) {
                        info.percentage = per;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Percentage";
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
                        hintText: "70% (or) 7.0 CGPA",
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
                      "Year Of Pass",
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
                      controller: Controllers.passingYear,
                      cursorColor: colors.primary,
                      onSaved: (year) {
                        info.passingYear = year;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Passing Year";
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
                        hintText: "2020",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
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
                                          "Please enter your Educational details...",
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
                              Controllers.degree.clear();
                              Controllers.institute.clear();
                              Controllers.percentage.clear();
                              Controllers.passingYear.clear();
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
