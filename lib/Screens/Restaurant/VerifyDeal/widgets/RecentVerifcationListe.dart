import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentVerificationListedWidget extends StatelessWidget {
  const RecentVerificationListedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,

                    border: Border(
                      bottom: BorderSide(color: AppColors.appClE7E7E7),
                    ),
                  ),

                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CR4A7B2X",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "BOGO Chicken Wraps",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                          SizedBox(height: 5),
                          Text(
                            "10:00PM",
                            style: GoogleFonts.inter(
                              color: AppColors.appCl6D6D6D,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
  }
}