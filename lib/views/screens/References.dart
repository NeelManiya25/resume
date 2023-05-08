import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('References'),
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
            height: h * 0.54,
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
                      "Reference Name",
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
                      controller: Controllers.referenceName,
                      cursorColor: colors.primary,
                      onSaved: (name) {
                        info.referenceName = name;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Reference Name";
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
                        hintText: "Amit Shah",
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
                      "Designation",
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
                      controller: Controllers.referDesignation,
                      cursorColor: colors.primary,
                      onSaved: (des) {
                        info.referDesignation = des;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Designation";
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
                        hintText: "Marketing Manager, ID - 354628",
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
                      "Organization/Institute",
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
                      controller: Controllers.referOrganization,
                      cursorColor: colors.primary,
                      onSaved: (org) {
                        info.referOrganization = org;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Organization";
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
                        hintText: "Reliance Pvt Ltd.",
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
                                          "Please enter Reference details...",
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
                              Controllers.referenceName.clear();
                              Controllers.referDesignation.clear();
                              Controllers.referOrganization.clear();
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