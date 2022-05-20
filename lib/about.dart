import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  var _color = Color.fromRGBO(108, 99, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Project"),
        backgroundColor:_color,
        elevation:0,
      ),
      body:Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(height: 30,),
            ContactUs(
              logo: AssetImage('images/computer.png'),
              email: 'Students : Manar Zaid , Abood Alyawar , ibrahim ',
              companyName: 'University of technology computer science ',
              phoneNumber: 'Branch : network',
              dividerThickness: 2,
              website: 'Name project : Design And Implementation Of A Network Data Analysis System',
              githubUserName: 'DR.gkgkgkg',
              linkedinURL: 'Date : 2022',
              facebookHandle: 'Flutter & Dart',
              taglineColor: Colors.amber,
              textColor: Colors.black,
              companyColor: Colors.indigoAccent,
              cardColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
