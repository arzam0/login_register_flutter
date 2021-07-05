import 'package:flutter/material.dart';

double screenHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return height;
}

double screenWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.height;
  return width;
}
