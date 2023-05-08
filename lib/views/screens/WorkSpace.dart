import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:resume/modals/Globals.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../utils/PathName.dart';

class ResumeWorkSpace extends StatefulWidget {
  const ResumeWorkSpace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkSpace> createState() => _ResumeWorkSpaceState();
}

class _ResumeWorkSpaceState extends State<ResumeWorkSpace> {
  Future<void> getPDF() async {
    pw.Document pdf = pw.Document();
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    pdf.addPage(
      pw.Page(
        pageTheme: pw.PageTheme(
          pageFormat: PdfPageFormat.a4,
          buildBackground: (context) => pw.FullPage(
            ignoreMargins: true,
          ),
        ),
        build: (pw.Context context) => pw.Container(
          decoration: pw.BoxDecoration(
            border: pw.Border.all(),
          ),
          child: pw.Padding(
            padding: const pw.EdgeInsets.all(16),
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Text("RESUME"),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Expanded(
                      flex: 4,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "${info.name}",
                            style: pw.TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text("Email Id : ${info.email}"),
                          pw.Text("Contact No. : ${info.contactNo}"),
                          pw.Text("Address: ${info.add1}")
                        ],
                      ),
                    ),
                    pw.Expanded(
                      flex: 1,
                      child: (info.image != null)
                          ? pw.Container(
                              height: h * 0.1,
                              decoration: pw.BoxDecoration(
                                borderRadius:
                                    pw.BorderRadius.circular(h * 0.01),
                                image: pw.DecorationImage(
                                  image: pw.MemoryImage(
                                    info.image!.readAsBytesSync(),
                                  ),
                                ),
                              ),
                            )
                          : pw.Container(
                              height: h * 0.1,
                              decoration: pw.BoxDecoration(
                                borderRadius:
                                    pw.BorderRadius.circular(h * 0.01),
                              ),
                            ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Carrier Objective",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Carrier Objective : ${info.carrierObjective}",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    pw.Text(
                      "Current Designations : ${info.currentDesignations}",
                      style: const pw.TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Educational Details",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Degree/Course : ${info.degree}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Institute : ${info.institute}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Percentage : ${info.percentage}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Passing Year : ${info.passingYear}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Experience",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Company Name : ${info.companyName}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Work Position : ${info.workPosition}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Technical Skills",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    (info.techSkill.length != null)
                        ? pw.ListView.builder(
                            itemCount: info.techSkill.length,
                            itemBuilder: (context, index) =>
                                pw.Text("${info.techSkill[index]}"),
                          )
                        : pw.Container(
                            height: h * 0.05,
                            width: w,
                          ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Interest / Hobbies",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    (info.interest.length != null)
                        ? pw.ListView.builder(
                            itemCount: info.interest.length,
                            itemBuilder: (context, index) =>
                                pw.Text("${info.interest[index]}"),
                          )
                        : pw.Container(
                            height: h * 0.05,
                            width: w,
                          ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Achievements",
                      style: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    (info.achievements.length != null)
                        ? pw.ListView.builder(
                            itemCount: info.achievements.length,
                            itemBuilder: (context, index) =>
                                pw.Text("${info.achievements[index]}"),
                          )
                        : pw.Container(
                            height: h * 0.05,
                            width: w,
                          ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "References",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Reference Name : ${info.referenceName}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Designation : ${info.referDesignation}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Text(
                      "Organization : ${info.referOrganization}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Declaration",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Description : ${info.description}",
                      style: const pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          "Date : ${info.declarationDate}",
                          style: const pw.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pw.Text(
                          "Place : ${info.place}",
                          style: const pw.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ); // Page
    Uint8List data = await pdf.save();
    await Printing.layoutPdf(
      onLayout: (format) => data,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Workspace'),
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
            color: colors.white,
            size: h * 0.03,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                getPDF();
              });
            },
            icon: Icon(
              Icons.picture_as_pdf_rounded,
              color: colors.white,
              size: h * 0.03,
            ),
          ),
        ],
      ),
      body: Column(
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
              'Build Options',
              style: TextStyle(
                fontSize: h * 0.024,
                fontWeight: FontWeight.w400,
                color: colors.white,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: paths
                    .map(
                      (e) => GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(e['page']),
                        child: Card(
                          child: ListTile(
                            leading: Image.asset(
                              e['icon'],
                              height: h * 0.05,
                              width: h * 0.05,
                              color: colors.primary,
                            ),
                            title: Text(
                              e['name'],
                              style: TextStyle(
                                fontSize: h * 0.025,
                                color: colors.primary,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: h * 0.03,
                              color: colors.primary,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
