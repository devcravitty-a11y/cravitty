import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static const Color appThemeColor = Color(0xffFFFFFF);
  static const Color appPrimaryColor = Color(0xffFF5200);
    static const Color appCl6D6D6D = Color(0xff6D6D6D);
  static const Color appClE7E7E7 = Color(0xffE7E7E7);
    static const Color appClFFECD3= Color(0xffFFECD3);
    static const Color appClFFF6EC= Color(0xffFFF6EC);
    static const Color appClFAFAFA= Color(0xffFAFAFA);
    
    static const Color appClCCFFE6= Color(0xFFCCFFE6);
    static const Color appClFFD4A5= Color(0xFFFFD4A5);
    static const Color appClDA1E28= Color(0xFFDA1E28);
    static const Color appClE0E0E0= Color(0xFFE0E0E0);
    static const Color appClF83446= Color(0xFFF83446);
    static const Color appCl454545= Color(0xFF454545);
    static const Color appCl068BEE= Color(0xFF068BEE);
    static const Color appClF757575= Color(0xFF757575);

    static const Color appCl06C167= Color(0xFF06C167);
    static const Color appClDBEAFE= Color(0xFFDBEAFE);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color grayColor = Colors.grey;
  static const Color orangeColor = Colors.orange;



  static final Map<String, Color> _colors = {};

  static Future<void> load() async {
    final String jsonString =
    await rootBundle.loadString('assets/jsons/Colour Tokens.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    // Extract variables array
    final List variables = jsonMap['variables'] ?? [];

    for (final varItem in variables) {
      final String name = varItem['name'];
      final resolved = (varItem['resolvedValuesByMode'] as Map).values.first;
      final value = resolved['resolvedValue'] as Map<String, dynamic>;

      final double r = (value['r'] as num).toDouble() * 255;
      final double g = (value['g'] as num).toDouble() * 255;
      final double b = (value['b'] as num).toDouble() * 255;
      final double a = (value['a'] != null ? (value['a'] as num).toDouble() : 1.0) * 255;

      _colors[name] = Color.fromARGB(a.toInt(), r.toInt(), g.toInt(), b.toInt());
    }
  }

  static Color get(String tokenName) {
    return _colors[tokenName] ?? Colors.transparent;
  }




}