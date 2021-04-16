import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/colors.dart';
import 'package:diploma/main.dart';
import 'route.dart';

class Sygnal extends StatefulWidget {


  @override
  _SygnalState createState() => _SygnalState();
}

class _SygnalState extends State<Sygnal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Гідроакустичний сигнал'),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          },),
          backgroundColor: Color(0xff0aae06)),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 30, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(left: 250),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MyCustomRoute(builder: (context) {
                    return MyHomePage();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0aae06)),
                ),
                child: Text("До меню", style: TextStyle(color: Colors.white, fontSize: 16)),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image(image: AssetImage("assets/sygnal.jpg")),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Ведуться подальші роботи по покращенню", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }

}