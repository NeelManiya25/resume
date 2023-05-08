import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Details'),
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
            color: colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: h * 0.85,
            width: w,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: BorderRadius.circular(16),
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
                      "DOB",
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
                      controller: Controllers.dateOfBirth,
                      cursorColor: colors.primary,
                      onSaved: (dob) {
                        info.dateOfBirth = dob;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter Date of Birth";
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
                        hintText: "DD/MM/YYYY",
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
                      "Gender",
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RadioListTile(
                            value: 1,
                            groupValue: radioButtons.gender,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.gender = val!;
                                colors.male = colors.primary;
                                colors.female = colors.grey;
                                colors.other = colors.grey;
                              });
                            },
                            title: Text(
                              "Male",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: colors.male,
                              ),
                            ),
                            activeColor: colors.primary,
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            value: 2,
                            groupValue: radioButtons.gender,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.gender = val!;
                                colors.male = colors.grey;
                                colors.female = colors.primary;
                                colors.other = colors.grey;
                              });
                            },
                            title: Text(
                              "Female",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: colors.female,
                              ),
                            ),
                            activeColor: colors.primary,
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            value: 3,
                            groupValue: radioButtons.gender,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.gender = val!;
                                colors.male = colors.grey;
                                colors.female = colors.grey;
                                colors.other = colors.primary;
                              });
                            },
                            title: Text(
                              "Other",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: colors.other,
                              ),
                            ),
                            activeColor: colors.primary,
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Marital Status",
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RadioListTile(
                            value: 1,
                            groupValue: radioButtons.marital,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.marital = val!;
                                colors.single = colors.primary;
                                colors.married = colors.grey;
                              });
                            },
                            title: Text(
                              "Single",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: colors.single,
                              ),
                            ),
                            activeColor: colors.primary,
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            value: 2,
                            groupValue: radioButtons.marital,
                            onChanged: (val) {
                              setState(() {
                                radioButtons.marital = val!;
                                colors.single = colors.grey;
                                colors.married = colors.primary;
                              });
                            },
                            title: Text(
                              "Married",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: colors.married,
                              ),
                            ),
                            activeColor: colors.primary,
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Language Known",
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
                          value: CheckBox.english,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.english = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "English",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.primary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: CheckBox.hindi,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.hindi = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "Hindi",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.primary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: CheckBox.gujarati,
                          onChanged: (val) {
                            setState(() {
                              CheckBox.gujarati = val!;
                            });
                          },
                          fillColor: MaterialStatePropertyAll(colors.primary),
                          checkColor: colors.white,
                        ),
                        Text(
                          "Gujarati",
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: colors.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Text(
                      "Nationality",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w500,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Container(
                      height: h * 0.068,
                      width: w * 0.9,
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(h * 0.01),
                      ),
                      child: DropdownButton(
                        hint: const Text('Select Nationality'),
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        iconSize: h * 0.04,
                        isExpanded: true,
                        style: TextStyle(
                          fontSize: h * 0.022,
                          color: colors.primary,
                        ),
                        value: countryName.chooseValue,
                        onChanged: (newValue) {
                          setState(() {
                            countryName.chooseValue = newValue as String;
                          });
                        },
                        items: countryName.country.map(
                          (name) {
                            return DropdownMenuItem(
                              value: name,
                              child: Text(name),
                            );
                          },
                        ).toList(),
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
                                          "Please enter your details...",
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
                              Controllers.dateOfBirth.clear();
                              radioButtons.gender = 0;
                              radioButtons.marital = 0;
                              CheckBox.english = false;
                              CheckBox.hindi = false;
                              CheckBox.gujarati = false;
                              countryName.chooseValue = null;
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