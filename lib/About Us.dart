import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class info extends StatelessWidget {


  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String random = 'Perpetual Hankerers of Electronics- PHoEnix\n\n'
    'PHoEnix is a team of highly motivated and skilled people who strive to cultivate the technical culture at BITS Pilani Hyderabad Campus\n\n'
    'Students from the following branches are inducted in this association:\n\n'
    'Electronics and Communication Engineering (ECE)\n\n'
    'Electrical and Electronics Engineering (EEE)\n\n'
    'Electronics and Instrumentation Engineering (ENI)\n\n'
    'We at PHoEnix, conduct events related to our core field, publish articles and participate incompetitions. Enthusiastic students are given a platform to showcase their skills and technicalexpertise.\n\n'
    'However, the most important function of PHoEnix is bridging the gap between the studentcommunity and faculty members.\n\n';


    return Scaffold(
      appBar: AppBar(

        title: Text('        Phoenix Association'),
        backgroundColor: Colors.pink[900],
      ),
      body: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text('ABOUT US',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20 ,0, 0),
              child: Center(child: Text(random)),
            ),
          ),
        ],
      ),
    );
  }
}
