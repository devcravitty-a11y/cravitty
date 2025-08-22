import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';

class Basicbutton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const Basicbutton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        onPressed: onPressed,

        child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
