import 'package:flutter/material.dart';
import 'package:material_colors/tab_colors.dart';
import 'package:material_colors/tab_preview.dart';
import 'package:material_colors/tab_set.dart';

import 'dynamic_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink, backgroundColor: Colors.white, accentColor: Colors.teal),
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'Material Color',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: MyHomePage(title: 'Material Color Palette'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[];

  @override
  void initState() {
    _widgetOptions.add(TabPreview());
    _widgetOptions.add(TabColors());
    _widgetOptions.add(TabSet());
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Preview"),
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens), label: "Colors"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Set"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
