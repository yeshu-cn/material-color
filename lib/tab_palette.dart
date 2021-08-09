import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_colors/color_utils.dart';
import 'package:material_colors/select_color_palette_pages.dart';

class TabPalette extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabPalette();
  }
}

class _TabPalette extends State<TabPalette> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Palette"),
        actions: [
          IconButton(icon: Icon(Icons.color_lens), onPressed: _navigationToSelectPalette,)
        ],
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
            leading: Icon(Icons.flag),
            title: Text("China"),
            subtitle: Text("where i from"),
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showColorPaletteBottomSheet,
        child: Icon(Icons.more_horiz),
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

  void _showColorPalette() {

  }

  void _showColorPaletteBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        child: Expanded(
          child: ListView(
            children: [
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
        context, MaterialPageRoute(builder: (context) => SelectColorPalettePages()));
  }
}
