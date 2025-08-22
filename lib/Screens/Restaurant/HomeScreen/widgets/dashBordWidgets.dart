
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      height: 100,
      width: width,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(image),
              Text(count),
            ]),
            Text(title)
        ],
      ),
    );
  }
}
