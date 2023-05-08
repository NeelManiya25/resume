import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Declaration'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: h * 0.80,
                width: w,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(h * 0.01),
                ),
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Declaration",
                                  style: TextStyle(
                                    color: colors.primary,
                                    fontSize: h * 0.024,
                                  ),
                                ),
                                const Spacer(),
                                Switch(
                                  activeColor: colors.primary,
                                  value: Switches.declaration,
                                  onChanged: (v) {
                                    setState(() {
                                      Switches.declaration = v;
                                    });
                                  },
                                ),
                              ],
                            ),
                            (Switches.declaration == true)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/images/goal.png",
                                        height: h * 0.08,
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                          color: colors.primary,
                                          fontSize: h * 0.024,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.02,
                                      ),
                                      TextFormField(
                                        cursorColor: colors.primary,
                                        controller: Controllers.description,
                                        onSaved: (val) {
                                          info.description = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Data...";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          labelText: "Description",
                                          labelStyle: TextStyle(
                                            color: colors.grey,
                                          ),
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
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.red,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(h * 0.01),
                                            borderSide: BorderSide(
                                              color: colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.025,
                                      ),
                                      Divider(
                                        color: colors.grey,
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: h * 0.025,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Date",
                                                  style: TextStyle(
                                                    color: colors.primary,
                                                    fontSize: h * 0.024,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: h * 0.06,
                                                ),
                                                TextFormField(
                                                  cursorColor: colors.primary,
                                                  controller: Controllers
                                                      .declarationDate,
                                                  onSaved: (val) {
                                                    info.declarationDate = val;
                                                  },
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Please Enter Date...";
                                                    }
                                                    return null;
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "DD/MM/YYYY",
                                                    hintStyle: TextStyle(
                                                      color: colors.grey,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.grey,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.primary,
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.red,
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: w * 0.05,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Place (Interview\nVenue/City)",
                                                  style: TextStyle(
                                                    color: colors.primary,
                                                    fontSize: h * 0.024,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: h * 0.03,
                                                ),
                                                TextFormField(
                                                  cursorColor: colors.primary,
                                                  controller: Controllers.place,
                                                  onSaved: (val) {
                                                    info.place = val;
                                                  },
                                                  validator: (val) {
                                                    if (val!.isEmpty) {
                                                      return "Please Enter Place...";
                                                    }
                                                    return null;
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText: "Ex. Surat",
                                                    hintStyle: TextStyle(
                                                      color: colors.grey,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.grey,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.primary,
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.red,
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 0.01),
                                                      borderSide: BorderSide(
                                                        color: colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: h * 0.05,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                setState(() {
                                                  formKey.currentState!.save();
                                                });
                                                ScaffoldMessenger.of(context)
                                                  ..removeCurrentSnackBar()
                                                  ..showSnackBar(
                                                    SnackBar(
                                                      content: const Text(
                                                        "Successfully Validate...",
                                                      ),
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      backgroundColor:
                                                          colors.green,
                                                    ),
                                                  );
                                                Navigator.pop(context);
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                  ..removeCurrentSnackBar()
                                                  ..showSnackBar(
                                                    SnackBar(
                                                      content: const Text(
                                                        " Please Enter Data..",
                                                      ),
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      backgroundColor:
                                                          colors.red,
                                                    ),
                                                  );
                                              }
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      colors.primary),
                                            ),
                                            child: const Text("Save"),
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                formKey.currentState!.reset();
                                                info.description =
                                                    info.declarationDate =
                                                        info.place = null;
                                                Controllers.description.clear();
                                                Controllers.declarationDate
                                                    .clear();
                                                Controllers.place.clear();
                                              });
                                            },
                                            style: ButtonStyle(
                                              side: MaterialStatePropertyAll(
                                                BorderSide(
                                                  color: colors.primary,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "RESET",
                                              style: TextStyle(
                                                color: colors.primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: colors.bgColor,
    );
  }
}
