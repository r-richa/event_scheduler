//import 'dart:html';

import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(

          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler'),
        ),
        backgroundColor: Colors.deepPurpleAccent[100],

        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(
                    Container(
                      //alignment: Alignment.center,

                      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),

                      width: 340,
                      padding: EdgeInsets.symmetric(vertical: 21, horizontal: 21),
                      child: Text(newText, textAlign: TextAlign.center),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),

                    ),
                  );
                });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}

