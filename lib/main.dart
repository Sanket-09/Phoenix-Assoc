import 'database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'About Us.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {

        '/': (context) =>  MyAppp(),
        '/second': (context) => CustomData(),
        '/third': (context) => info(),

      },

    );


  }
}

class MyAppp extends StatefulWidget {
  const MyAppp({Key? key}) : super(key: key);

  @override
  _MyApppState createState() => _MyApppState();
}

class _MyApppState extends State<MyAppp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:  NavBarContainer(Icons.person),
        title: Text('        Phoenix Association'),
        backgroundColor: Colors.pink[900],
      ),

      body: Container(
        color: Colors.white70,
        child: Column(
          children: [
            Center(child: Image.asset('Assets/phoenix.png'), heightFactor: 1.2,),
            SizedBox(
              height: 10,
            ),
            Container(
              child: buttonItem('Entreprenurship Summit', 90),
            )

          ],
        ),

        ),
      );


  }
  Widget buttonItem(String buttonName, double size) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/second');

      },
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 70,
        child: Card(
          elevation: 50,
          color: Colors.grey[300],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: Colors.grey,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget NavBarContainer(IconData icon){
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/third');

        },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/4,

        child: Icon(icon),
      ),
    );

  }
}


