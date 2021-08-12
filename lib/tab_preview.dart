import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_colors/color_utils.dart';
import 'package:material_colors/select_color_pages.dart';

class TabPreview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabPreview();
  }
}

class _TabPreview extends State<TabPreview> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Preview"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.snowboarding, color: themeData.iconTheme.color),
            title: Text("Snowboarding"),
            subtitle: Text("my favorite sport"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.computer,
              color: themeData.iconTheme.color,
            ),
            title: Text("Software Developer"),
            subtitle: Text("my jop"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flag, color: themeData.iconTheme.color),
            title: Text("China"),
            subtitle: Text("my country"),
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigationToSelectPalette,
        child: Icon(Icons.colorize),
        tooltip: 'current palette',
      ),
    );
  }

  void _showPaletteBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      ThemeData themeData = Theme.of(context);
      return Container(
        child: Expanded(
          child: ListView(
            children: [
              _buildPaletteItem("Dark Primary Color", ColorUtils.colorToHex(themeData.primaryColorDark), themeData.primaryColorDark),
              _buildPaletteItem("Light Primary Color", ColorUtils.colorToHex(themeData.primaryColorLight), themeData.primaryColorLight),
              _buildPaletteItem("Primary Color", ColorUtils.colorToHex(themeData.primaryColor), themeData.primaryColor),
              _buildPaletteItem("Accent Color", ColorUtils.colorToHex(themeData.accentColor), themeData.accentColor),
              _buildPaletteItem("Divider Color", ColorUtils.colorToHex(themeData.dividerColor), themeData.dividerColor),
            ],
          ),

        ),
      );
    });
  }


  Widget _buildColorPaletteItem(Color color) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
      ),
    );
  }


  Widget _buildPaletteItem(String title, String value, Color color) {
    return Container(
      color: color,
      child: ListTile(
        title: Text(title),
        subtitle: Text(value), trailing: IconButton(icon: Icon(Icons.copy), onPressed: () {
            Clipboard.setData(ClipboardData(text: value));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("copy $value success"),
            ));
          },)
      ),
    );
  }

  void _navigationToSelectPalette() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectColorPage()));
  }
}
