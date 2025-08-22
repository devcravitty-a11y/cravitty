import 'package:cravitty/Screens/Restaurant/Registration/widgets/RegitrationForm.dart';
import 'package:cravitty/Screens/Restaurant/VerifyDeal/widgets/RecentVerifcationListe.dart';
import 'package:cravitty/Screens/Restaurant/VerifyDeal/widgets/scanSectionWidget.dart';
import 'package:cravitty/components/Widgets/Buttons.dart';
import 'package:cravitty/components/Widgets/appBar.dart';
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          // Custom SliverAppBar
          SliverAppBar(
            automaticallyImplyLeading: false,
            scrolledUnderElevation: 0,
            pinned: true,
            floating: false,
            expandedHeight: 50,
            backgroundColor: AppColors.whiteColor,
            title: SafeArea(
              bottom: false,
              child: SizedBox(
                height: 56,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.blackColor,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Verify Deals",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 48,
                    ), // space to balance center alignment
                  ],
                ),
              ),
            ),
          ),

          // Scan Section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ScanSectionWidget(width: width),
            ),
          ),

          // Divider with "Or"
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Text('   Or  '),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
            ),
          ),

          // Claim Code Form
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: RegistrationFormWidget(
                title: "Claim Code ",
                hint: "Enter Claim Code ",
                isRequired: false,
              ),
            ),
          ),

          // Verify Button
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Basicbutton(title: "Verify Code", onPressed: () {}),
            ),
          ),

          // Recent Verification List Header
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Text(
                "Recent Verifications",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return RecentVerificationListedWidget();
              }, childCount: 20),
            ),
          ),
        ],
      ),
    );
  }
}
