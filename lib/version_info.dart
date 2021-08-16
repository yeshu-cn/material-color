import 'package:flutter/material.dart';

import 'browser.dart';

class VersionInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VersionInfoState();
  }
}

class _VersionInfoState extends State<VersionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('版本信息'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 60),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  'assets/icon/icon.png',
                  width: 100.0,
                  height: 100.0,
                ),
                borderRadius: BorderRadius.circular(20),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Material Colors')],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Version 1.0.0')],
          ),
          Expanded(child: SizedBox()),
          GestureDetector(child: Text("《隐私保护指引》", style: TextStyle(color: Colors.indigoAccent),), onTap: (){
            _navigationPrivacy();
          },),
          SizedBox(
            height: 10,
          ),
          Text("Copyright © 2021 HaHa. All Rights Reserved."),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  void _navigationPrivacy() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Browser("http://yeshu.fun/poetry/privacy", "隐私保护指引",)));
  }
}
