import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//สร้าง widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เมนู อาหาร"),
      ),
      body: Center(
        child: ListView(
          children: getData(15),
        ),
      ),
    );
  }

  List<Widget> getData(int count) {
    //กลุ่มข้อมูล
    List<Widget> data = [];

    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนูที่ ${i + 1}",
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text("หัวข้อย่อยที่ ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}
