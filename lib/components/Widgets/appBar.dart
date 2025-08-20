import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function()? onBackPress;
  const CustomAppBar({super.key, required this.title, this.onBackPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 56,
          child: Row(
            children: [
              SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.arrow_back_ios,color: AppColors.blackColor,size: 20,),
                onPressed: onBackPress,
              ),
               Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 48), // space to balance center alignment
            ],
          ),
        ),
      ),
    );
  }
}
