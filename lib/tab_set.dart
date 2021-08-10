import 'package:flutter/material.dart';
import 'package:material_colors/dynamic_theme.dart';

class TabSet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabSet();
  }
}

class _TabSet extends State<TabSet> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Set"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(width: 1, color: theme.dividerColor)),
            ),
            child: ListTile(
              title: Text("Light/Dark Mode"),
              trailing: Switch(
                value: isSwitched,
                activeColor: theme.primaryColor,
                activeTrackColor: theme.accentColor,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                    DynamicTheme.of(context)!.setBrightness(value ? Brightness.dark : Brightness.light);
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 1, color: theme.dividerColor),
                      bottom: BorderSide(width: 1, color: theme.dividerColor))),
              child: ListTile(
                  title: Text('版本信息', style: theme.textTheme.bodyText2),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: theme.iconTheme.color))),
        ],
      ),
    );
  }
}
