

import 'package:flutter/material.dart';

class TabSet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabSet();
  }

}

class _TabSet extends State<TabSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set"),
      ),
    );
  }

}