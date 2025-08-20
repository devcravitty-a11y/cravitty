import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextStyles {
  static final Map<String, TextStyle> _textStyles = {};

  static Future<void> load() async {
    final String jsonString =
    await rootBundle.loadString('assets/jsons/Typograph Token.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    final List variables = jsonMap['variables'] ?? [];
    final Map<String, Map<String, dynamic>> grouped = {};

    for (final varItem in variables) {
      final String rawName = varItem['name'];
      final parts = rawName.split('/');
      if (parts.length < 2) continue;

      final groupName = _cleanName(parts.sublist(0, 2).join('/'));
      grouped.putIfAbsent(groupName, () => {});

      final resolved = (varItem['resolvedValuesByMode'] as Map).values.first;
      final value = resolved['resolvedValue'];

      if (rawName.contains('Size')) {
        grouped[groupName]!['size'] = (value as num).toDouble();
      } else if (rawName.contains('Weight')) {
        if (value is num) {
          grouped[groupName]!['weight'] =
          FontWeight.values[((value ~/ 100).clamp(1, 9))];
        }
      } else if (rawName.contains('Display') ||
          rawName.contains('Heading') ||
          rawName.contains('Label') ||
          rawName.contains('Paragraph')) {
        grouped[groupName]!['fontFamily'] = value.toString();
      } else if (rawName.contains('LetterSpacing')) {
        grouped[groupName]!['letterSpacing'] = (value as num).toDouble();
      } else if (rawName.contains('LineHeight')) {
        grouped[groupName]!['height'] = (value as num).toDouble();
      }
    }

    grouped.forEach((name, attrs) {
      _textStyles[name] = TextStyle(
        fontFamily: attrs['fontFamily'] ?? 'Roboto',
        fontSize: attrs['size'] ?? 14.0,
        fontWeight: attrs['weight'] ?? FontWeight.w400,
        letterSpacing: attrs['letterSpacing'] ?? 0.0,
        height: attrs['height'], // line-height / font-size if given
      );
    });
  }

  static TextStyle get(String tokenName) =>
      _textStyles[tokenName] ?? const TextStyle();

  static String _cleanName(String name) {
    return name
        .split('/')
        .take(2)
        .join('')
        .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')
        .replaceFirstMapped(RegExp(r'^[A-Z]'), (m) => m.group(0)!.toLowerCase());
  }
}
