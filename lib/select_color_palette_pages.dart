import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:material_colors/color_utils.dart';

import 'color_item.dart';

class SelectColorPalettePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectColorPalettePagesState();
  }
}

class _SelectColorPalettePagesState extends State<SelectColorPalettePages> {
  ColorItem primaryColor = ColorItem('Red', Colors.red, Colors.white);
  ColorItem accentColor = ColorItem('Teal', Colors.teal, Colors.white);

  @override
  Widget build(BuildContext context) {
    List<ColorItem> colorItems = ColorUtils.getColorItems();
    return Scaffold(
      appBar: AppBar(
        title: Text("select palette"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Container(
            child: Column(
              children: [
                Row(
                  children: [Text("Current Value")],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: primaryColor.color,
                        child: Flexible(
                          child: Text(
                            "Primary Color",
                            style: TextStyle(color: primaryColor.textColor),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: accentColor.color,
                        child: Text(
                          "Accent Color",
                          style: TextStyle(color: accentColor.textColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          )),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
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
                            color: (colorItems[index].color.value ==
                                        primaryColor.color.value ||
                                    colorItems[index].color.value ==
                                        accentColor.color.value)
                                ? Colors.white
                                : Colors.black26,
                          ))
                    ],
                  ),
                );
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
