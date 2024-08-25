import 'package:flutter/material.dart';
import 'ColorsApp.dart';

abstract class TextStyles{
  static TextStyle customWhiteTextStyle32 = TextStyle(
    fontSize: 32,
    color: ColorsApp().white,
    fontFamily: 'pacifico',
  );

  static TextStyle customWhiteTextStyle24 = TextStyle(
    fontSize: 24,
    color: ColorsApp().white,
  );


}