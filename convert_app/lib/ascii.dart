import 'package:flutter/material.dart';
import 'binary.dart';
import 'hexa.dart';
import 'octa.dart';
import 'main.dart';
void main() => runApp(Myascii());

class Myascii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convert Hexa',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyAsciiFormState createState() => _MyAsciiFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.

class _MyAsciiFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  var  test ;
  @override
  void initState() {
    super.initState();
    test = "";
  }
  String _Binary = '  ';
  String _Octa = '  ';
  String _Deci = '  ';
  String _Hexa = '  ';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert ASCII'),
      ),
      body: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[



          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:  Text(
                    'Entrer ASCII words:',
                    style: TextStyle(fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,//this has no effect
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: '........... Entrer ..........',
                        hintStyle: TextStyle(
                          color: Colors.purple,
                          fontStyle: FontStyle.italic,
                        )
                    ),
                    onChanged: (text) {
                      _doSomething(text);
                    },
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Text(
                    'Binary number:',
                    style: TextStyle(fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Text(
                    _Binary,
                    style: TextStyle(color: Colors.green,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 10.0,
                            offset: Offset(-5.0, 5.0),
                          ),
                        ],
                        fontSize: 30),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:   Text(
                    'octa number :',
                    style: TextStyle(fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                    _Octa,
                    style: TextStyle(color: Colors.red,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 10.0,
                            offset: Offset(-5.0, 5.0),
                          ),
                        ],fontSize: 30),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                    'Deci number:',
                    style: TextStyle(fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Text(
                    _Deci,
                    style: TextStyle(color: Colors.blue,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 10.0,
                            offset: Offset(-5.0, 5.0),
                          ),
                        ],
                        fontSize: 30),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                    'Hexa number:',
                    style: TextStyle(fontStyle: FontStyle.italic,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Text(
                    _Hexa,
                    style: TextStyle(color: Colors.blue,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 10.0,
                            offset: Offset(-5.0, 5.0),
                          ),
                        ],
                        fontSize: 30),
                  ),
                ),















                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child:   Text(
                    'Created By Achraf Iabiten ',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Color(0xFFA0A0A0),
                        fontSize: 12),
                  ),
                ),
                Text(
                  'copyright © 2019',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Color(0xFFA0A0A0),
                      fontSize: 12),
                ),


              ],
            ),
          ),


        ],
      ),




      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:  AssetImage('image/aaa.png'))),
                child: Stack(children: <Widget>[
                  Positioned(
                      bottom: 12.0,
                      left: 16.0,
                      child: Text("Convert Step-by-Step",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500))),
                ])),
            ListTile(
              title: Text('Decimale(10)'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDec()),
                );
              },
            ),
            ListTile(
              title: Text('Binary(2)'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBina()),
                );
              },
            ),
            ListTile(
              title: Text('Octa(8)'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOcta()),
                );
              },
            ),
            ListTile(
              title: Text('Hexa(16)'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myhexa()),
                );
              },
            ),
            ListTile(
              title: Text('ASCII'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myascii()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
  void _doSomething(String text) {
    setState(() {
      _Binary = int.parse('$text',radix: 16).toRadixString(2);
      _Hexa = int.parse('$text',radix: 16).toRadixString(2);
      _Octa = int.parse('$text',radix: 16).toRadixString(8);
      _Deci = int.parse('$text',radix: 16).toRadixString(10);
    });
  }
}