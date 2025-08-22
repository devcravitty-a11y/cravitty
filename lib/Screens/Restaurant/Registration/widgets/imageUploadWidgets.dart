import 'package:cravitty/components/colors.dart';
import 'package:cravitty/components/paths.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageUploadWidget extends StatelessWidget {
  final String title;

  const ImageUploadWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(18),
    color:AppColors.grayColor,
    strokeWidth: 2,
    dashPattern: [10, 5],

  ),

  child: Container(
    clipBehavior: Clip.antiAlias,
    width: double.infinity,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
           color: Colors.grey.shade50,
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("${AppPaths.iconsSvg}imageUpload.svg"),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Supported formats: PDF, PNG or JPEG",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.appClF757575
          ),
        ),
      ],
    ),
  ),
);
  }
}