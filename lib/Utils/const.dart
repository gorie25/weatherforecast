import 'package:flutter/material.dart';

double getWidth(BuildContext context, double widthFactor) {
  return MediaQuery.of(context).size.width * widthFactor;
}

double getHeight(BuildContext context, double heightFactor) {
  return MediaQuery.of(context).size.height * heightFactor;
}

double paddingCustom(BuildContext context, double paddingFactor) {
  return MediaQuery.of(context).size.width * paddingFactor;
} 