import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class CustomData extends StatefulWidget {
  @override
  _CustomDataState createState() => _CustomDataState();

}

class _CustomDataState extends State<CustomData> {
  var firestoreDB = Firestore.instance.collection("startup").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('   Entrepreneurship Summit'),
        backgroundColor: Colors.pink[900],
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreDB,
        builder: (context,AsyncSnapshot snapshot){
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
    if (!snapshot.hasData) return CircularProgressIndicator();

   return ListView.builder(
    itemCount: (snapshot.data as QuerySnapshot).documents.length-2,
    itemBuilder: (context,int index){
      return  SafeArea(child: Column(
        children: [
          SizedBox(height: 15),
          Text(snapshot.data.documents[0]['Name'],style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[0]['Employees'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[0]['Funding'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[0]['Idea'],style:
            TextStyle(
              fontSize: 15,
            ),),

          SizedBox(height: 30),
          Text(snapshot.data.documents[1]['Name'],style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[1]['Employees'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[1]['Funding'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[1]['Idea'],style:
          TextStyle(
            fontSize: 15,
          ),),

          SizedBox(height: 40),
          Text(snapshot.data.documents[2]['Name'],style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[2]['Employees'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[2]['Funding'].toString(),style:
          TextStyle(
            fontSize: 15,
          ),),
          Text(snapshot.data.documents[2]['Idea'],style:
          TextStyle(
            fontSize: 15,
          ),),
          ],
      ));
    }
    );
    },
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
}


