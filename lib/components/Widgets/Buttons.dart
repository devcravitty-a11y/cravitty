import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class BasicbuttonWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final double radius;
  final VoidCallback onPressed;
  const BasicbuttonWithIcon({super.key, required this.title, required this.onPressed, required this.icon, required this.radius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        icon: Icon(icon,color: AppColors.whiteColor,),
        label: Text(title,style: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: 14,color: AppColors.whiteColor),),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          elevation: 0,
        ),
        onPressed: onPressed,

      ),
    );
  }
}
