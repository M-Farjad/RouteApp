// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class UIParameters {
  static bool isDarkMode() {
    // return Theme.of(context).brightness == Brightness.dark;
    return Get.isDarkMode ? true : false;
  }
}

const double cardBorderRadius = 10.0;
const double defaultPadding = 16.0;
const EdgeInsets defaultEdgePadding = EdgeInsets.all(defaultPadding);
const EdgeInsets defaultVerticalPadding =
    EdgeInsets.symmetric(vertical: defaultPadding);
const EdgeInsets defaultHorizontalPadding =
    EdgeInsets.symmetric(horizontal: defaultPadding);
final BorderRadius cardBoardRadius = BorderRadius.circular(cardBorderRadius);
const EdgeInsets defaultTopPadding = EdgeInsets.only(top: defaultPadding);
const EdgeInsets defaultBottomPadding = EdgeInsets.only(bottom: defaultPadding);

const SizedBox defaultHeightSpace = SizedBox(height: defaultPadding);
const SizedBox defaultWidthSpace = SizedBox(width: defaultPadding);
