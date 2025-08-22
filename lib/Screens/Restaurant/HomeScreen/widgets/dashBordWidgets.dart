
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBordWidget extends StatelessWidget {

  const DashBordWidget({
    super.key,
    required this.width, required this.title, 
    required this.count, 
     required this.image, 
    required this.color, 
    required this.onTap,

  });

  final double width;
  final String title;
  final String count;
  final String image;
  final Color color;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: width,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(image),
              SizedBox(width: 10,),  
              Text(
                count,
               style: GoogleFonts.inter(
              fontSize: 18,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600,
            )),
            ]),
            SizedBox(height: 5,),
            Text(title,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppColors.appCl4F4F4F,
              fontWeight: FontWeight.w500,
            ))
        ],
      ),
    );
  }
}
