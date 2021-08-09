import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_colors/color_item.dart';

class ColorUtils {
  static String colorToHex(Color color) {
    return "#${color.value.toRadixString(16).toUpperCase()}";
  }

  static List<ColorItem> getColorItems() {
    return [
      ColorItem("Red", Colors.red),
      ColorItem("Pink", Colors.pink),
      ColorItem("Purple", Colors.purple),
      ColorItem("Deep Purple", Colors.deepPurple),
      ColorItem("Indigo", Colors.indigo),
      ColorItem("Blue", Colors.blue),
      ColorItem("Light Blue", Colors.lightBlue),
      ColorItem("Cyan", Colors.cyan),
      ColorItem("Teal", Colors.teal),
      ColorItem("Green", Colors.green),
      ColorItem("Light Green", Colors.lightGreen),
      ColorItem("Lime", Colors.lime),
      ColorItem("Yellow", Colors.yellow),
      ColorItem("Amber", Colors.amber),
      ColorItem("Orange", Colors.orange),
      ColorItem("Deep Orange", Colors.deepOrange),
      ColorItem("Brown", Colors.brown),
      ColorItem("Grey", Colors.grey),
      ColorItem("Blue Grey", Colors.blueGrey),
    ];
  }
}
