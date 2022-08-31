import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mycolors = ["blue", "green", "red", "purple  "];
  List mycolorsinflutter = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple
  ];
  List<NetworkImage> myImages = [
    NetworkImage(
        "https://www.seekpng.com/png/detail/15-153485_splash-clipart-colored-water-blue-paint-splatter-clipart.png"),
    NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV9v4ES5M5sMTstWrh375d7fIxLbGrnnJ7h6n9Pq8lCOuOZRmV7s5S1IaJQ2a-p0Oj3rE&usqp=CAU"),
    NetworkImage("http://www.clker.com/cliparts/Z/J/q/o/0/g/red-md.png"),
    NetworkImage(
        "https://www.kindpng.com/picc/m/43-434886_purple-splash-clip-art-at-clker-splash-clip.png")
  ];
  List colorNumber = ["One", "Two", "Three", "Four"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("${mycolors[i]}"),
                  subtitle: Text("${colorNumber[i]}"),
                  leading: Icon(Icons.colorize, color: mycolorsinflutter[i]),
                  trailing: Image(image: myImages[i]),
                );
              }),
        ),
      ),
    );
  }
}
