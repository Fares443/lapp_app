import 'package:flutter/material.dart';
import 'package:lapp_app/appcon.dart';

Appcon appcon = Appcon();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('info'),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Map(),
        ),
      ),
    );
  }
}

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  List<Widget> myicon = [];
  void shecap(bool what) {
    bool careat = appcon.getbool(myNumber);
    setState(() {
      if (what == careat) {
        myicon.add(Icon(
          Icons.thumb_up,
          color: Colors.green,
        ));
      } else {
        myicon.add(Icon(
          Icons.thumb_down,
          color: Colors.red,
        ));
      }
      myNumber++;
    });
  }

  int myNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Row(
                children: myicon,
              ),
              Image.asset(appcon.getimage(myNumber)),
              SizedBox(
                height: 30,
              ),
              Text(
                appcon.getstring(myNumber),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  shecap(true);
                },
                child: Text(
                  'صح',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.indigo)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                shecap(false);
              },
              child: Text(
                'خطأ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
