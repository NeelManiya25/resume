import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Interest/Hobbies'),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: h,
          width: w,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.circular(h * 0.01),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Enter Your Interest/Hobbies",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: h * 0.025,
                    color: colors.primary,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                ...List.generate(
                  info.interest.length,
                  (index) => Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: colors.primary,
                              ),
                            ),
                          ),
                          controller: Controllers.interest[index],
                          onChanged: (value) {
                            info.interest[index] = value;
                          },
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            info.interest.removeAt(index);
                            Controllers.interest.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.delete,
                          color: colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(colors.primary),
                  ),
                  onPressed: () {
                    setState(() {
                      info.interest.add("");
                      Controllers.interest.add(TextEditingController());
                    });
                  },
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: colors.bgColor,
    );
  }
}
