import 'package:flutter/material.dart';

void main() {
  runApp(MyAPP);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("สวัสดี ครับ"),
        ),
        body: Text("สวัสดีครับ ทุกคน"),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
