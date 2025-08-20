import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../components/colors.dart';
import '../LoginProviders/LoginProvider.dart';

class TabButton extends StatelessWidget {

  final double width;

  const TabButton({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    LoginProvider loginProvider = Provider.of<LoginProvider>(context, listen: false);

    return   DefaultTabController(
      length: 2,
      child: Container(
        width: width,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: AppColors.appClE7E7E7,
          borderRadius: BorderRadius.circular(8),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: TabBar(
          onTap: (index){

            loginProvider.setCurrentIndex(index);

          },
          indicatorColor: const Color.fromRGBO(25, 25, 25, 1.0),
          dividerColor:  AppColors.appClE7E7E7,

          indicator: BoxDecoration(
            color: AppColors.appThemeColor,
            borderRadius: BorderRadius.circular(8),

          ),
          indicatorPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          indicatorWeight: 0,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor:AppColors.appPrimaryColor,
          unselectedLabelColor: AppColors.blackColor,
          labelPadding: EdgeInsets.zero,
          tabs: [
            Tab(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Customer",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Tab(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Restaurant",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
