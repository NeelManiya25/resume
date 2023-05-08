import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrier Objective'),
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
            height: h * 0.6,
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
                      "Carrier Objective",
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
                      controller: Controllers.carrierObjective,
                      cursorColor: colors.primary,
                      maxLines: 5,
                      onSaved: (co) {
                        info.carrierObjective = co;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Carrier Objective";
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
                        hintText: "Description",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.1,
                    ),
                    Text(
                      "Current Designations (Experienced Candidate)",
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
                      controller: Controllers.currentDesignations,
                      cursorColor: colors.primary,
                      onSaved: (cd) {
                        info.currentDesignations = cd;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Current Designations";
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
                        hintText: "Software Engineer",
                        hintStyle: TextStyle(
                          fontSize: h * 0.02,
                          color: colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.05,
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
                                          "Please enter above details...",
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
                              Controllers.carrierObjective.clear();
                              Controllers.currentDesignations.clear();
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
