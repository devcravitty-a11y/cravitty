import 'package:cravitty/components/colors.dart';
import 'package:cravitty/components/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenListView extends StatelessWidget {
  const HomeScreenListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color(0x33000000), // #00000033
                offset: const Offset(0, 0.5), // x=0, y=0.5
                blurRadius: 4, // blur
                spreadRadius: 0, // spread
              ),
            ],
          ),
          width: 50,
          child: Column(
            spacing: 10,
            children: [
              Row(
                children: [
                  Text(
                    "Burger + Fries Combo",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                      left: 7,
                      right: 7,
                    ),
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                      color: AppColors.appClCCFFE6,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Active",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.appCl06C167,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text(
                    "\u{20B9}200",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\u{20B9}200",

                    style: GoogleFonts.inter(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 16,
                      color: AppColors.appCl6D6D6D,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),

                  SvgPicture.asset('${AppPaths.iconsSvg}pause.svg'),
                  SizedBox(width: 10),

                  SvgPicture.asset('${AppPaths.iconsSvg}edit.svg'),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            '${AppPaths.iconsSvg}claimToday.svg',
                          ),
                          SizedBox(width: 5),
                          Text(
                            "200",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: AppColors.appClEA580C,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      Text(
                        "Claim Report",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: AppColors.appCl6D6D6D,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('${AppPaths.iconsSvg}TodayRev.svg'),
                          SizedBox(width: 5),
                          Text(
                            "\u{20B9}200",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: AppColors.appCl2563EB,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      Text(
                        "Todays Revenue",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: AppColors.appCl6D6D6D,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
