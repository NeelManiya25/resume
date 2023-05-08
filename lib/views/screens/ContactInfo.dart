import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';
import 'package:image_picker/image_picker.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  Future<void> getImageFromCamera() async {
    ImagePicker pick = ImagePicker();

    XFile? img = await pick.pickImage(source: ImageSource.camera);
    if (img != null) {
      setState(() {
        info.image = File(img.path);
      });
    }
  }

  Future<void> getImageFromGallery() async {
    ImagePicker pick = ImagePicker();

    XFile? img = await pick.pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        info.image = File(img.path);
      });
    }
  }

  int i = 1;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contact Page'),
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
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    i = 1;
                  });
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 0.5,
                  decoration: BoxDecoration(
                    border: (i == 1)
                        ? Border(
                            bottom: BorderSide(
                              color: colors.grey,
                              width: 5,
                            ),
                          )
                        : Border(
                            bottom: BorderSide(
                              color: colors.grey,
                              width: 0,
                            ),
                          ),
                    color: colors.primary,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      color: colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    i = 2;
                  });
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 0.5,
                  decoration: BoxDecoration(
                    border: (i == 2)
                        ? Border(
                            bottom: BorderSide(
                              color: colors.grey,
                              width: 5,
                            ),
                          )
                        : Border(
                            bottom: BorderSide(
                              color: colors.grey,
                              width: 0,
                            ),
                          ),
                    color: colors.primary,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Photo",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      color: colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          (i == 1)
              ? Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: h * 0.58,
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
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: h * 0.045,
                                  color: colors.grey,
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.name,
                                    cursorColor: colors.primary,
                                    keyboardType: TextInputType.name,
                                    onSaved: (name) {
                                      info.name = name;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter your Name";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email_rounded,
                                  size: h * 0.045,
                                  color: colors.grey,
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.email,
                                    cursorColor: colors.primary,
                                    keyboardType: TextInputType.emailAddress,
                                    onSaved: (email) {
                                      info.email = email;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter your Email";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android_sharp,
                                  size: h * 0.045,
                                  color: colors.grey,
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.contactNo,
                                    cursorColor: colors.primary,
                                    keyboardType: TextInputType.phone,
                                    onSaved: (no) {
                                      info.contactNo = no;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter your Phone Number";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      hintText: "Phone",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: h * 0.045,
                                  color: colors.grey,
                                ),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.add1,
                                    cursorColor: colors.primary,
                                    onSaved: (a1) {
                                      info.add1 = a1;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter your Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.red,
                                        ),
                                      ),
                                      hintText: "Address (Street, Building No)",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: w * 0.135,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.add2,
                                    cursorColor: colors.primary,
                                    onSaved: (a2) {
                                      info.add2 = a2;
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      hintText: "Address Line 2",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: w * 0.135,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: Controllers.add3,
                                    cursorColor: colors.primary,
                                    onSaved: (a3) {
                                      info.add3 = a3;
                                    },
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.grey,
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colors.primary,
                                        ),
                                      ),
                                      hintText: "Address Line 3",
                                      hintStyle: TextStyle(
                                        fontSize: h * 0.02,
                                        color: colors.grey,
                                      ),
                                    ),
                                  ),
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
                                    backgroundColor: MaterialStatePropertyAll(
                                        colors.primary),
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
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor: colors.green,
                                                duration:
                                                    const Duration(seconds: 4),
                                              ),
                                            );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                            ..removeCurrentSnackBar()
                                            ..showSnackBar(
                                              SnackBar(
                                                content: const Text(
                                                  "Please enter Contact details...",
                                                ),
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor: colors.red,
                                                duration:
                                                    const Duration(seconds: 4),
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
                                      Controllers.name.clear();
                                      Controllers.email.clear();
                                      Controllers.contactNo.clear();
                                      Controllers.add1.clear();
                                      Controllers.add2.clear();
                                      Controllers.add3.clear();
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
                )
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: h * 0.3,
                    width: w,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: h * 0.1,
                              backgroundColor: colors.grey,
                              foregroundImage: info.image != null
                                  ? FileImage(
                                      File(info.image!.path),
                                    )
                                  : null,
                              child: Text(
                                "Add Image",
                                style: TextStyle(
                                  color: colors.primary,
                                  fontSize: h * 0.025,
                                ),
                              ),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Add Image"),
                                      backgroundColor: colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(h * 0.02),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                getImageFromCamera();
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        colors.primary),
                                              ),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color: colors.white,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                getImageFromGallery();
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        colors.primary),
                                              ),
                                              child: Icon(
                                                Icons.image,
                                                color: colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(h * 0.01),
                              ),
                              backgroundColor: colors.primary,
                              child: Icon(
                                Icons.add,
                                size: h * 0.025,
                                color: colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
      backgroundColor: colors.bgColor,
    );
  }
}
