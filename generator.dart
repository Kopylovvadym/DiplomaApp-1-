import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/colors.dart';
import 'route.dart';
import 'sygnals.dart';

class Generator extends StatefulWidget {


  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Генератор'),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          },),
          backgroundColor: Color(0xff0aae06)),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: Container(
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(top: 30),
               child: Text("Координата джерела сигналу no(z):",
                        style: TextStyle(fontSize: 19)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: 230,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top: 15),
                child: Text("Координати ГАС (x, y, z):",
                    style: TextStyle(fontSize: 19)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 40,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 15),
                    ),
                    Container(
                      child: SizedBox(
                        height: 40,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 15),
                    ),
                    Container(
                      child: SizedBox(
                        height: 40,
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(right: 15),
                    ),

                  ],
                ),
              ),
              Container(margin: EdgeInsets.only(top: 15),
                child: Text("Частота випромінювання джерела:",
                    style: TextStyle(fontSize: 19)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: 230,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top: 15),
                child: Text("Час моделювання сигналу:",
                    style: TextStyle(fontSize: 19)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: 230,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top: 15),
                child: Text("Глибина моря:",
                    style: TextStyle(fontSize: 19)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: 230,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 1.2),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 250,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MyCustomRoute(builder: (context) {
                        return Sygnal();
                      }));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0aae06)),
                    ),
                    child: Text("Згенерувати сигнал",
                      style: TextStyle(fontSize: 21, color: Colors.white),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}