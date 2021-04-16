import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/colors.dart';
import 'generator.dart';
import 'route.dart';
import 'sygnals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0aae06),
        title: Text("Генератор Гідроакустичних Сигналів"),
        leading: Icon(null),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    height: 70,
                    width: 240,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MyCustomRoute(builder: (context) {
                          return Generator();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0aae06)),
                      ),
                      child: Text("Початок роботи",
                        style: TextStyle(fontSize: 26, color: Colors.white),

                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                    child: SizedBox(
                      height: 70,
                      width: 240,
                      child: ElevatedButton(
                        onPressed: () => SystemNavigator.pop(),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0aae06)),
                        ),
                        child: Text("Вихід",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

}

