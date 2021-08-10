import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_colors/color_item.dart';

class ColorUtils {
  static String colorToHex(Color color) {
    return "#${color.value.toRadixString(16).toUpperCase()}";
  }

  static List<ColorItem> getColorItems() {
    return [
      ColorItem("Red", Colors.red, Colors.white),
      ColorItem("Pink", Colors.pink, Colors.white),
      ColorItem("Purple", Colors.purple, Colors.white),
      ColorItem("Deep Purple", Colors.deepPurple, Colors.white),
      ColorItem("Indigo", Colors.indigo, Colors.white),
      ColorItem("Blue", Colors.blue, Colors.white),
      ColorItem("Light Blue", Colors.lightBlue, Colors.white),
      ColorItem("Cyan", Colors.cyan, Colors.white),
      ColorItem("Teal", Colors.teal, Colors.white),
      ColorItem("Green", Colors.green, Colors.white),
      ColorItem("Light Green", Colors.lightGreen, Colors.black87),
      ColorItem("Lime", Colors.lime, Colors.black87),
      ColorItem("Yellow", Colors.yellow, Colors.black87),
      ColorItem("Amber", Colors.amber, Colors.black87),
      ColorItem("Orange", Colors.orange, Colors.black87),
      ColorItem("Deep Orange", Colors.deepOrange, Colors.white),
      ColorItem("Brown", Colors.brown, Colors.white),
      ColorItem("Grey", Colors.grey, Colors.black87),
      ColorItem("Blue Grey", Colors.blueGrey, Colors.white),
    ];
  }
}
