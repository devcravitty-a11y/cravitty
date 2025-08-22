import 'package:cravitty/Screens/Restaurant/HomeScreen/widgets/dashBordWidgets.dart';
import 'package:cravitty/components/colors.dart';
import 'package:cravitty/components/paths.dart';
import 'package:cravitty/components/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RestuaranthomeScreen extends StatelessWidget {
  const RestuaranthomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -0.7),
            end: Alignment(0.0, -1.0),
            colors: [AppColors.whiteColor, AppColors.appClFFD4A5],
          ),
        ),
        padding: EdgeInsets.all(15),
        child: SafeArea(child: 
        Column(children: [
          Row(
            children: [
              SvgPicture.asset("${AppPaths.iconsSvg}person.svg"),
              SizedBox(width: 10,),
              Text('Cravitty',style: GoogleFonts.inter(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),),
            ],
          ),
          DashBordWidget(width: width,
          count: "2342",
          title: 'Today Revenue',
           image: '${AppPaths.iconsSvg}TodayRev.svg',
            color: AppColors.appClDBEAFE, 
            onTap: (){},)
          
          ])),
      ),
    );
  }
}
