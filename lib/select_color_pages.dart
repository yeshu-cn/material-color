import 'package:flutter/material.dart';
import 'package:material_colors/color_utils.dart';
import 'package:material_colors/dynamic_theme.dart';

import 'color_item.dart';

class SelectColorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectColorPageState();
  }
}

class _SelectColorPageState extends State<SelectColorPage> {
  ColorItem primaryColor = ColorItem('Red', Colors.red, Colors.white);
  ColorItem accentColor = ColorItem('Teal', Colors.teal, Colors.white);
  bool selectPrimaryMode = true;

  @override
  Widget build(BuildContext context) {
    List<ColorItem> colorItems = ColorUtils.getColorItems();
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Colors"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text("Current theme color"),
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 100,
                          color: primaryColor.color,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Text(
                                  "Primary Color\n\n${ColorUtils.colorToHex(primaryColor.color)}",
                                  style:
                                      TextStyle(color: primaryColor.textColor),
                                ),
                                left: 10,
                                top: 10,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.done,
                                  color: selectPrimaryMode
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                                bottom: 10,
                                right: 10,
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectPrimaryMode = true;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: 100,
                          color: accentColor.color,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Text(
                                  "Accent Color\n\n${ColorUtils.colorToHex(accentColor.color)}",
                                  style:
                                      TextStyle(color: accentColor.textColor),
                                ),
                                left: 10,
                                top: 10,
                              ),
                              Positioned(
                                child: Icon(
                                  Icons.done,
                                  color: selectPrimaryMode
                                      ? Colors.transparent
                                      : Colors.white,
                                ),
                                bottom: 10,
                                right: 10,
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectPrimaryMode = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text("Color list"),
                    )
                  ],
                )
              ],
            ),
          )),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _buildGridItem(colorItems[index]);
              }, childCount: colorItems.length),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100.0,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1)),
        ],
      ),
    );
  }

  Widget _buildGridItem(ColorItem item) {
    if (selectPrimaryMode) {
      if (item.color.value == primaryColor.color.value) {
        return GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: item.color,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 10,
                  child: Text(
                    item.name,
                    style: TextStyle(color: item.textColor),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            _onTabGridItem(item);
          },
        );
      }
    } else {
      if (item.color.value == accentColor.color.value) {
        return GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: item.color,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 10,
                  child: Text(
                    item.name,
                    style: TextStyle(color: item.textColor),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            _onTabGridItem(item);
          },
        );
      }
    }
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: item.color,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                item.name,
                style: TextStyle(color: item.textColor),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        _onTabGridItem(item);
      },
    );
  }

  void _onTabGridItem(ColorItem item) {
    setState(() {
      if (selectPrimaryMode) {
        primaryColor = item;
      } else {
        accentColor = item;
      }
      DynamicTheme.of(context)!.setThemeData(ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryColor.color, backgroundColor: Colors.white, accentColor: accentColor.color),
      ));
    });
  }

  Widget _buildBody() {
    List<ColorItem> colorItems = ColorUtils.getColorItems();
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        childAspectRatio: 1,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: colorItems[index].color,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 10,
                child: Text(
                  colorItems[index].name,
                  style: TextStyle(color: colorItems[index].textColor),
                ),
              ),
              Positioned(
                  right: 10,
                  bottom: 10,
                  child: Icon(
                    Icons.done,
                    color: Colors.black26,
                  ))
            ],
          ),
        );
      },
      itemCount: colorItems.length,
    );
  }

  void _savePrimaryColor(Color color) {}

  void _saveAccentColor(Color color) {}
}
