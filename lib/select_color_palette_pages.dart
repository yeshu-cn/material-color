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

  @override
  Widget build(BuildContext context) {
    List<ColorItem> colorItems = ColorUtils.getColorItems();
    return Scaffold(
      appBar: AppBar(
        title: Text("select palette"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        childAspectRatio: 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ), itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: colorItems[index].color,
          ),
          child: Column(
            children: [
              Text(colorItems[index].name),
              Icon(Icons.done, color: Colors.white,)
            ],
          ),
        );
      },
      itemCount: colorItems.length,),
    );
  }

}