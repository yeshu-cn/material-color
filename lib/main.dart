import 'package:flutter/material.dart';
import 'package:material_colors/swatch_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Color',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Material Color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: [
            Container(
              decoration: new BoxDecoration(color: Colors.red),
              child: ListTile(title: Text("Red"),
                onTap: (){
                  _navigationToSwatchDetail("Red", Colors.red, Colors.redAccent);
                },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.pink),
              child: ListTile(title: Text("Pink"),onTap: (){
                _navigationToSwatchDetail("Pink", Colors.pink, Colors.pinkAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.purple),
              child: ListTile(title: Text("Purple"),onTap: (){
                _navigationToSwatchDetail("Purple", Colors.purple, Colors.purpleAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.deepPurple),
              child: ListTile(title: Text("Deep Purple"),onTap: (){
                _navigationToSwatchDetail("Deep Purple", Colors.deepPurple, Colors.deepPurpleAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.indigo),
              child: ListTile(title: Text("indigo"),onTap: (){
                _navigationToSwatchDetail("indigo", Colors.indigo, Colors.indigoAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.blue),
              child: ListTile(title: Text("Blue"),onTap: (){
                _navigationToSwatchDetail("Blue", Colors.blue, Colors.blueAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.lightBlue),
              child: ListTile(title: Text("Light Blue"),onTap: (){
                _navigationToSwatchDetail("Light Blue", Colors.lightBlue, Colors.lightBlueAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.cyan),
              child: ListTile(title: Text("Cyan"),onTap: (){
                _navigationToSwatchDetail("Cyan", Colors.cyan, Colors.cyanAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.teal),
              child: ListTile(title: Text("Teal"),onTap: (){
                _navigationToSwatchDetail("Teal", Colors.teal, Colors.tealAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.green),
              child: ListTile(title: Text("Green"),onTap: (){
                _navigationToSwatchDetail("Green", Colors.green, Colors.greenAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.lightGreen),
              child: ListTile(title: Text("Light Green"),onTap: (){
                _navigationToSwatchDetail("Light Green", Colors.lightGreen, Colors.lightGreenAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.lime),
              child: ListTile(title: Text("Lime"),onTap: (){
                _navigationToSwatchDetail("Lime", Colors.lime, Colors.limeAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.yellow),
              child: ListTile(title: Text("Yellow"),onTap: (){
                _navigationToSwatchDetail("Yellow", Colors.yellow, Colors.yellowAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.amber),
              child: ListTile(title: Text("Amber"),onTap: (){
                _navigationToSwatchDetail("Amber", Colors.amber, Colors.amberAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.orange),
              child: ListTile(title: Text("Orange"),onTap: (){
                _navigationToSwatchDetail("Orange", Colors.orange, Colors.orangeAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.deepOrange),
              child: ListTile(title: Text("Deep Orange"),onTap: (){
                _navigationToSwatchDetail("Deep Orange", Colors.deepOrange, Colors.deepOrangeAccent);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.brown),
              child: ListTile(title: Text("Brow"),onTap: (){
                _navigationToSwatchDetail("Brow", Colors.brown, null);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.grey),
              child: ListTile(title: Text("Grey"),onTap: (){
                _navigationToSwatchDetail("Grey", Colors.grey, null);
              },),
            ),
            Container(
              decoration: new BoxDecoration(color: Colors.blueGrey),
              child: ListTile(title: Text("Blue Grey"),onTap: (){
                _navigationToSwatchDetail("Blue Grey", Colors.blueGrey, null);
              },),
            ),
          ],
        ),
      ),
    );
  }

  void _navigationToSwatchDetail(String title, MaterialColor color, MaterialAccentColor? accentColor) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SwatchDetail(color, accentColor, title)));
  }
}
