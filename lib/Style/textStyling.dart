import 'package:flutter/material.dart';
import 'package:griot/Style/ColorAsset.dart';
import 'package:griot/Style/font.dart';
import 'size.dart';

class TextStylling{
  static TextStyle feedcardbuttonstyle = TextStyle(fontSize: Size.m, fontFamily: Font.roboto, color: ColorAsset.primary);
  static TextStyle feedcardtitlestyle = TextStyle(fontSize: Size.l, fontFamily: Font.lora, fontStyle: FontStyle.italic, color: ColorAsset.white);
  static TextStyle feedcardsbodystyle = TextStyle(fontSize: Size.s, fontFamily: Font.roboto, color: ColorAsset.black);
}