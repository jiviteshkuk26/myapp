import 'package:flutter/material.dart';

void main() {
  runApp(Pg1());
}

class Pg1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scafoldwig()
    );
  }

  Widget Scafoldwig(){
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child:Text(
              "Page 1"
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Cont(),
          ),
          color: Colors.grey,
        ),
        bottomNavigationBar: BottomAppBar(
         child: Container(
            height:50,
            color: Colors.blue,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: "About button",
          backgroundColor: Colors.pink,
          child: Icon(Icons.access_time),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
  Widget Cont(){
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.lightBlue[200],
      child: Padder(),
      margin: EdgeInsets.all(10),
    );
  }
  Widget RowWidget(){
   return Row(
      children:<Widget>[
        Expanded(child:Text(
          "Heading 1",
          style: TextStyle(
          fontSize: 30
          ),
          textAlign: TextAlign.center,
        ),
         ),
        Expanded(child: Text(
          "Heading 2",
          style: TextStyle(
          fontSize: 30
          ),
          textAlign: TextAlign.center,
          ),
          ),
        
         Expanded(child: Text(
          "Heading 3",
          style: TextStyle(
          fontSize: 30
          ),
          textAlign: TextAlign.center,
          ),
          ),
      ]   
      );
  }
  Widget Col(){
    return Column(
      children: <Widget>[
        Text(
          "Heading 1",
          style: TextStyle(
          fontSize: 30
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          "Heading 2",
          style: TextStyle(
          fontSize: 30
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
   Widget Padder(){
        return Padding(
          padding:EdgeInsets.all(2),
          child:Col(),
         );
      }
}