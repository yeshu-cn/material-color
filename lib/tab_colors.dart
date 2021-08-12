

import 'package:flutter/material.dart';
import 'package:material_colors/swatch_detail.dart';

class TabColors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabColorsState();
  }

}

class _TabColorsState extends State<TabColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Colors"),
      ),
      body: _buildMaterialColorList(),
    );return Text("colors");
  }

  void _navigationToSwatchDetail(String title, MaterialColor color, MaterialAccentColor? accentColor) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SwatchDetail(color, accentColor, title)));
  }

  Widget _buildMaterialColorList() {
    return ListView(
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
    );
  }
}