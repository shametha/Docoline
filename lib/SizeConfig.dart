import 'package:flutter/material.dart';
class MySize {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? safeWidth;
  static double? safeHeight;
  static late double scaleFactorWidth;
  static late double scaleFactorHeight;

  //Custom sizes
  static double? size0;
  static late double size2;
  static late double size3;
  static double? size4;
  static double? size5;
  static double? size6;
  static late double size7;
  static double? size8;
  static double? size10;
  static double? size12;
  static double? size14;
  static double? size16;
  static double? size18;
  static double? size20;
  static double? size22;
  static double? size24;
  static double? size26;
  static double? size28;
  static double? size30;
  static double? size32;
  static late double size34;
  static double? size36;
  static double? size38;
  static double? size40;
  static double? size42;
  static double? size44;
  static double? size48;
  static double? size50;
  static double? size52;
  static double? size54;
  static double? size56;
  static double? size60;
  static double? size64;
  static double? size68;
  static double? size72;
  static double? size76;
  static double? size80;
  static double? size90;
  static late double size96;
  static double? size100;
  static double? size120;
  static double? size140;
  static double? size160;
  static double? size180;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    double _safeAreaWidth =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    double _safeAreaHeight =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeWidth = (screenWidth - _safeAreaWidth);
    safeHeight = (screenHeight - _safeAreaHeight);

    //Scale factor for responsive UI
    scaleFactorHeight = (safeHeight! / 820);
    if (scaleFactorHeight < 1) {
      double diff = (1 - scaleFactorHeight) * (1 - scaleFactorHeight);
      scaleFactorHeight += diff;
    }
    scaleFactorWidth = safeWidth! / 392;
    if (scaleFactorWidth < 1) {
      double diff = (1 - scaleFactorWidth) * (1 - scaleFactorWidth);
      scaleFactorWidth += diff;
    }

    //Custom sizes
    size0 = 0;
    size2 = scaleFactorHeight * 2;
    size3 = scaleFactorHeight * 3;
    size4 = scaleFactorHeight * 4;
    size5 = scaleFactorHeight * 5;
    size6 = scaleFactorHeight * 6;
    size7 = scaleFactorHeight * 7;
    size8 = scaleFactorHeight * 8;
    size10 = scaleFactorHeight * 10;
    size12 = scaleFactorHeight * 12;
    size14 = scaleFactorHeight * 14;
    size16 = scaleFactorHeight * 16;
    size18 = scaleFactorHeight * 18;
    size20 = scaleFactorHeight * 20;
    size22 = scaleFactorHeight * 22;
    size24 = scaleFactorHeight * 24;
    size26 = scaleFactorHeight * 26;
    size28 = scaleFactorHeight * 28;
    size30 = scaleFactorHeight * 30;
    size32 = scaleFactorHeight * 32;
    size34 = scaleFactorHeight * 34;
    size36 = scaleFactorHeight * 36;
    size38 = scaleFactorHeight * 38;
    size40 = scaleFactorHeight * 40;
    size42 = scaleFactorHeight * 42;
    size44 = scaleFactorHeight * 44;
    size48 = scaleFactorHeight * 48;
    size50 = scaleFactorHeight * 50;
    size52 = scaleFactorHeight * 52;
    size54 = scaleFactorHeight * 54;
    size56 = scaleFactorHeight * 56;
    size60 = scaleFactorHeight * 60;
    size64 = scaleFactorHeight * 64;
    size68 = scaleFactorHeight * 68;
    size72 = scaleFactorHeight * 72;
    size76 = scaleFactorHeight * 76;
    size80 = scaleFactorHeight * 80;
    size90 = scaleFactorHeight * 90;
    size96 = scaleFactorHeight * 96;
    size100 = scaleFactorHeight * 100;
    size120 = scaleFactorHeight * 120;
    size140 = scaleFactorHeight * 140;
    size160 = scaleFactorHeight * 160;
    size180 = scaleFactorHeight * 180;
  }

  static double getScaledSizeWidth(double size) {
    return (size * scaleFactorWidth);
  }

  static double getScaledSizeHeight(double size) {
    return (size * scaleFactorHeight);
  }
}

class Spacing {
  static EdgeInsetsGeometry zero = EdgeInsets.zero;
  static EdgeInsetsGeometry only(
      {double top = 0, double right = 0, double bottom = 0, double left = 0}) {
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }
  static EdgeInsetsGeometry fromLTRB(
      double left, double top, double right, double bottom) {
    return Spacing.only(bottom: bottom, top: top, right: right, left: left);
  }
  static EdgeInsetsGeometry all(double spacing) {
    return Spacing.only(
        bottom: spacing, top: spacing, right: spacing, left: spacing);
  }
  static EdgeInsetsGeometry left(double spacing) {
    return Spacing.only(left: spacing);
  }
  static EdgeInsetsGeometry nLeft(double spacing) {
    return Spacing.only(top: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsetsGeometry top(double spacing) {
    return Spacing.only(top: spacing);
  }
  static EdgeInsetsGeometry nTop(double spacing) {
    return Spacing.only(left: spacing, bottom: spacing, right: spacing);
  }
  static EdgeInsetsGeometry right(double spacing) {
    return Spacing.only(right: spacing);
  }
  static EdgeInsetsGeometry nRight(double spacing) {
    return Spacing.only(top: spacing, bottom: spacing, left: spacing);
  }
  static EdgeInsetsGeometry bottom(double spacing) {
    return Spacing.only(bottom: spacing);
  }
  static EdgeInsetsGeometry nBottom(double spacing) {
    return Spacing.only(top: spacing, left: spacing, right: spacing);
  }
  static EdgeInsetsGeometry horizontal(double spacing) {
    return Spacing.only(left: spacing, right: spacing);
  }
  static x(double spacing) {
    return Spacing.only(left: spacing, right: spacing);
  }
  static xy(double xSpacing, double ySpacing) {
    return Spacing.only(
        left: xSpacing, right: xSpacing, top: ySpacing, bottom: ySpacing);
  }
  static y(double spacing) {
    return Spacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsetsGeometry vertical(double spacing) {
    return Spacing.only(top: spacing, bottom: spacing);
  }
  static EdgeInsetsGeometry symmetric(
      {double vertical = 0, double horizontal = 0}) {
    return Spacing.only(
        top: vertical, right: horizontal, left: horizontal, bottom: vertical);
  }
  static Widget height(double height) {
    return SizedBox(
      height: height,
    );
  }
  static Widget width(double width) {
    return SizedBox(
      width: width,
    );
  }



}



class Space{

  Space();


  static Widget height(double space){
    return SizedBox(height: MySize.getScaledSizeHeight(space),);
  }

  static Widget width(double space){
    return SizedBox(width: MySize.getScaledSizeHeight(space),);
  }

}

enum ShapeTypeFor{
  container,
  button
}

class Shape{

  static dynamic circular(double radius,{ShapeTypeFor shapeTypeFor=ShapeTypeFor.container}){
    BorderRadius borderRadius = BorderRadius.all(Radius.circular(MySize.getScaledSizeHeight(radius)));

    switch(shapeTypeFor) {
      case ShapeTypeFor.container:
        return borderRadius;
      case ShapeTypeFor.button:
        return RoundedRectangleBorder(
            borderRadius: borderRadius);
    }
  }

 static dynamic circularTop(double radius,{ShapeTypeFor shapeTypeFor=ShapeTypeFor.container}){

    BorderRadius borderRadius = BorderRadius.only(topLeft: Radius.circular(MySize.getScaledSizeHeight(radius)),topRight: Radius.circular(MySize.getScaledSizeHeight(radius)));
    switch(shapeTypeFor) {
      case ShapeTypeFor.container:
        return borderRadius;

      case ShapeTypeFor.button:
        return RoundedRectangleBorder(
            borderRadius: borderRadius);
    }
  }

}
