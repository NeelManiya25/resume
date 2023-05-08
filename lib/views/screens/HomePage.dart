import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return WillPopScope(
      onWillPop: () async {
        bool willPop = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Exit"),
            content: const Text("Are you sure to exit?"),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(
                  "Yes",
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
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  "No",
                  style: TextStyle(
                    color: colors.primary,
                  ),
                ),
              ),
            ],
          ),
        );
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Resume Builder'),
          titleTextStyle: TextStyle(
            color: colors.white,
            fontSize: h * 0.028,
            fontWeight: FontWeight.w400,
          ),
          centerTitle: true,
          backgroundColor: colors.primary,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: h * 0.1,
                width: w,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(h * 0.03),
                    bottomRight: Radius.circular(h * 0.03),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "RESUME",
                  style: TextStyle(
                    fontSize: h * 0.024,
                    fontWeight: FontWeight.w400,
                    color: colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Image.asset(
                'assets/images/open-cardboard-box.png',
                height: h * 0.08,
                width: h * 0.08,
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                'No Resumes + Create new resume.',
                style: TextStyle(
                  fontSize: h * 0.025,
                  color: colors.grey,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).pushNamed('WorkSpace'),
          backgroundColor: colors.primary,
          child: Icon(
            Icons.add,
            color: colors.white,
            size: h * 0.05,
          ),
        ),
      ),
    );
  }
}