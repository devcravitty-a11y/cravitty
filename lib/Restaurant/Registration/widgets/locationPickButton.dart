import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/colors.dart';
import '../../../components/paths.dart';
import '../../../components/styles.dart';

class LocationPickButton extends StatelessWidget {


  const LocationPickButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Location",style: GoogleFonts.inter(
              color: AppColors.appCl6D6D6D,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),),
            Text("*",style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,color: Colors.red)),
          ],
        ),
        SizedBox(height: 2),
        Container(
          height: 55,
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),

          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.appClE7E7E7,width: 1),

            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Select Location",style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.blackColor,
              ),),
              SvgPicture.asset(
                '${AppPaths.iconsSvg}location.svg',)
            ],
          ),
        )
      ],
    );
  }
}
