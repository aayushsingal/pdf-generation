import 'package:flutter/material.dart';
import 'package:test_application/report.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PDFCreator(),
    );
  }
}

class PDFCreator extends StatefulWidget {
  @override
  _PDFCreatorState createState() => _PDFCreatorState();
}

class _PDFCreatorState extends State<PDFCreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              margin: const EdgeInsets.only(top: 30),
              height: 40,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Text(
                    'Get Report',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    reportView(context);
                  }))),
    );
  }
}
