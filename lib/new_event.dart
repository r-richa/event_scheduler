import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        title: Text('New Event'),
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                controller: _textEditingController,
                maxLines: 5,
                minLines: 1,
                style: TextStyle(color: Colors.white,),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today, color: Colors.white),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),

                  labelText:'   Event',
                  filled: true,
                  fillColor: Colors.indigo,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  )

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white60,
              ),
              child: ElevatedButton(
                  onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                  
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                    elevation: MaterialStatePropertyAll(0),
                    fixedSize: MaterialStatePropertyAll(
                      Size.fromWidth(380),
                    ),
                    textStyle: MaterialStatePropertyAll(
                      TextStyle(fontSize: 18),
                    ),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(23),
                    ),

                  ),
                  child: Text('ADD')),
            ),

          ],
        ),
      ),
    );
  }
}
