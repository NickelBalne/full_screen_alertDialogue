import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        title: Text("POPUP_MENU_BUTTON"),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/mahesh.jpeg"),fit: BoxFit.fill)),
        child: Center(child: RaisedButton(onPressed: (){
        return showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: MaterialLocalizations.of(context)
                .modalBarrierDismissLabel,
            barrierColor: Colors.black45,
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (BuildContext buildContext,
                Animation animation,
                Animation secondaryAnimation) {
              return Center(
                child: Container(
//                  width: MediaQuery.of(context).size.width - 200,
                  width: MediaQuery.of(context).size.width,
//                  height: MediaQuery.of(context).size.height - 200,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFF1BC0C5),
                      )
                    ],
                  ),
                ),
              );
            });
      }),),),
    );
  }
}








