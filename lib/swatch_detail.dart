import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SwatchDetail extends StatefulWidget {
  final MaterialColor _color;
  final MaterialAccentColor? _accentColor;
  final String _title;

  SwatchDetail(this._color, this._accentColor, this._title);

  @override
  State<StatefulWidget> createState() {
    return _SwatchDetailState(_color, _accentColor, _title);
  }
}

class _SwatchDetailState extends State<SwatchDetail> {
  final MaterialColor _color;
  final MaterialAccentColor? _accentColor;
  final String _title;

  _SwatchDetailState(this._color, this._accentColor, this._title);

  @override
  Widget build(BuildContext context) {
    if (null != _accentColor) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: Text(_title),
        ),
        body: ListView(
          children: [
            buildItem("50", _color[50]!),
            buildItem("100", _color[100]!),
            buildItem("200", _color[200]!),
            buildItem("300", _color[300]!),
            buildItem("400", _color[400]!),
            buildItem("500", _color[500]!),
            buildItem("600", _color[600]!),
            buildItem("700", _color[700]!),
            buildItem("800", _color[800]!),
            buildItem("900", _color[900]!),
            buildItem("A100", _accentColor![100]!),
            buildItem("A200", _accentColor![200]!),
            buildItem("A400", _accentColor![400]!),
            buildItem("A700", _accentColor![700]!),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: ListView(
          children: [
            buildItem("50", _color[50]!),
            buildItem("100", _color[100]!),
            buildItem("200", _color[200]!),
            buildItem("300", _color[300]!),
            buildItem("400", _color[400]!),
            buildItem("500", _color[500]!),
            buildItem("600", _color[600]!),
            buildItem("700", _color[700]!),
            buildItem("800", _color[800]!),
            buildItem("900", _color[900]!),
          ],
        ),
      );
    }
  }

  String _colorToHex(Color color) {
    return "#${color.value.toRadixString(16).toUpperCase()}";
  }

  Widget buildItem(String title, Color color) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: ListTile(
        title: Text(title),
        subtitle: Text(_colorToHex(color)),
        trailing: IconButton(icon: Icon(Icons.copy), onPressed: () {
          Clipboard.setData(ClipboardData(text: _colorToHex(color)));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("copy ${_colorToHex(color)} success"),
          ));
        },),
      ),
    );
  }
}
