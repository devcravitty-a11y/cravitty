import 'package:cravitty/Screens/Restaurant/CreateDeals/CreateDealsScreen.dart';
import 'package:cravitty/Screens/Restaurant/HomeScreen/widgets/HomeListWidget.dart';
import 'package:cravitty/Screens/Restaurant/HomeScreen/widgets/dashBordWidgets.dart';
import 'package:cravitty/components/Widgets/Buttons.dart';
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
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                  Row(
                  children: [
                    SvgPicture.asset("${AppPaths.iconsSvg}person.svg"),
                    SizedBox(width: 10),
                    Text(
                      'Cravitty',
                      style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: DashBordWidget(
                        width: width,
                        count: "\u{20B9}2342",
                        title: 'Today Revenue',
                        image: '${AppPaths.iconsSvg}TodayRev.svg',
                        color: AppColors.appClDBEAFE,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DashBordWidget(
                        width: width,
                        count: "23",
                        title: 'Active Deals',
                        image: '${AppPaths.iconsSvg}ActiveDeal.svg',
                        color: AppColors.appClDCFCE7,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                DashBordWidget(
                  width: width,
                  count: "23",
                  title: 'Active Deals',
                  image: '${AppPaths.iconsSvg}claimToday.svg',
                  color: AppColors.appClFFEDD5,
                  onTap: () {},
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Your Deals",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                
                    SizedBox(
                      width: 150,
                
                      child: BasicbuttonWithIcon(
                        icon: Icons.add,
                        radius: 30,
                        title: "Create Deal",
                        onPressed: () {
                          // Handle button press
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateDealsScreen()));
                        },
                      ),
                    ),
                  ],
                ),
                  ],
                ),
              ),
              Expanded(child: HomeScreenListView()),
            ],
          ),
        ),
      ),
    
    floatingActionButton: SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      
        backgroundColor: AppColors.appPrimaryColor,
        child: SvgPicture.asset("${AppPaths.iconsSvg}Scan.svg"),
        onPressed: () {
          // Handle button press
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateDealsScreen()));
        },
      ),
    ),
    );
  }
}
