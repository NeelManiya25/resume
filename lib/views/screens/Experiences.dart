import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiences'),
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
            height: h * 0.84,
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
                      "Company Name",
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
                      controller: Controllers.companyName,
                      cursorColor: colors.primary,
                      onSaved: (name) {
                        info.companyName = name;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Company Name";
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
                        hintText: "Shiva Enterprise, Delhi",
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
                      "Work Position",
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
                      controller: Controllers.workPosition,
                      cursorColor: colors.primary,
                      onSaved: (position) {
                        info.workPosition = position;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Work Position";
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
                        hintText: "Project Manager",
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
                      "Roles (Optional)",
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
                      controller: Controllers.role,
                      cursorColor: colors.primary,
                      maxLines: 4,
                      onSaved: (role) {
                        info.role = role;
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
                        hintText:
                            "Identifies the project's goals, objectives, and scope and creates a project plan that outlines the tasks, timelines and resources required.",
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
                      "Employed Status",
                      style: TextStyle(
                        fontSize: h * 0.018,
                        color: colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            value: 1,
                            groupValue: radioButtons.employed,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.employed = val!;
                                colors.previous = colors.primary;
                                colors.currently = colors.grey;
                              });
                            },
                            title: Text(
                              "Previously employed",
                              style: TextStyle(
                                fontSize: h * 0.015,
                                color: colors.previous,
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(0),
                            activeColor: colors.primary,
                            dense: true,
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            value: 2,
                            groupValue: radioButtons.employed,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.employed = val!;
                                colors.previous = colors.grey;
                                colors.currently = colors.primary;
                              });
                            },
                            title: Text(
                              "Currently employed",
                              style: TextStyle(
                                fontSize: h * 0.015,
                                color: colors.currently,
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(0),
                            activeColor: colors.primary,
                            dense: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      height: h * 0.001,
                      width: w * 0.85,
                      color: colors.grey,
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    (radioButtons.employed == 1)
                        ? Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date Joined",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    SizedBox(
                                      height: h * 0.045,
                                      child: TextFormField(
                                        controller: Controllers.joined,
                                        cursorColor: colors.primary,
                                        onSaved: (join) {
                                          info.joined = join;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Required";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.primary,
                                            ),
                                          ),
                                          hintText: "DD/MM/YYYY",
                                          hintStyle: TextStyle(
                                            fontSize: h * 0.015,
                                            color: colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date Exit",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    SizedBox(
                                      height: h * 0.045,
                                      child: TextFormField(
                                        controller: Controllers.exit,
                                        cursorColor: colors.primary,
                                        onSaved: (exit) {
                                          info.exit = exit;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Required";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.primary,
                                            ),
                                          ),
                                          hintText: "DD/MM/YYYY",
                                          hintStyle: TextStyle(
                                            fontSize: h * 0.015,
                                            color: colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date Joined",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                        color: colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.02,
                                    ),
                                    SizedBox(
                                      height: h * 0.045,
                                      child: TextFormField(
                                        controller: Controllers.joined,
                                        cursorColor: colors.primary,
                                        onSaved: (join) {
                                          info.joined = join;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Required";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.primary,
                                            ),
                                          ),
                                          hintText: "DD/MM/YYYY",
                                          hintStyle: TextStyle(
                                            fontSize: h * 0.015,
                                            color: colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(
                                flex: 3,
                              ),
                            ],
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
                                          "Please enter your Experiences details...",
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
                              Controllers.companyName.clear();
                              Controllers.workPosition.clear();
                              Controllers.role.clear();
                              radioButtons.employed = 1;
                              Controllers.joined.clear();
                              Controllers.exit.clear();
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