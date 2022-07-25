import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
//กลุ่มข้อมูล

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("หมูทอด", "50", "assets/images/picture2.jpg"),
    FoodMenu("ไก่ย่าง", "40", "assets/images/picture1.jpg"),
    FoodMenu("คอหมูย่าง", "120", "assets/images/picture3.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เมนู อาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                  leading: Image.asset(food.img),
                  title: Text(food.name),
                  subtitle: Text("ราคา" + food.price + "บาท"),
                  onTap: () {
                    print("เลือกอาหารชื่อว่า = " + food.name);
                  });
            }));
  }
}
