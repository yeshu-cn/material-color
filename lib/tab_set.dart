import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:material_colors/dynamic_theme.dart';
import 'package:material_colors/version_info.dart';

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
                      top: BorderSide(width: 1, color: theme.dividerColor),
                      bottom: BorderSide(width: 1, color: theme.dividerColor))),
              child: ListTile(
                  title: Text('Version Info', style: theme.textTheme.bodyText2),
                  onTap: _navigationToVersionInfo,
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: theme.iconTheme.color))),
          Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(width: 1, color: theme.dividerColor))),
              child: ListTile(
                  title: Text('Feedback', style: theme.textTheme.bodyText2),
                  onTap: _navigationToAppStore,
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: theme.iconTheme.color))),
        ],
      ),
    );
  }

  void _navigationToVersionInfo() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VersionInfo()));
  }

  void _navigationToAppStore() {
    LaunchReview.launch(
        androidAppId: "fun.yeshu.materialcolor", iOSAppId: "1581064133");
  }
}
