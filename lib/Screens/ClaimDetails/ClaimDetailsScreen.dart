import 'package:cravitty/Screens/ClaimDetails/widgets/InfoCard.dart';
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../components/Widgets/appBar.dart';



class ClaimDetailsScreen extends StatelessWidget {
  const ClaimDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.appThemeColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90), // custom height
        child: CustomAppBar(title: 'Claim Details', onBackPress: () {
          Navigator.pop(context);})
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),

            SizedBox(
                width: 90,
                height: 90,
                child: Lottie.asset("assets/lottie/Success.json")),

            const SizedBox(height: 16),
             Text(
              'Deal successfully claimed',
              style: GoogleFonts.notoSans(fontSize: 18, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 6),
            Text(
              'Show this QR code at the restaurant',
              style: GoogleFonts.inter(color: AppColors.appCl6D6D6D, fontSize: 14),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 18),

            // QR Card
            Card(
              color: Colors.white,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 14),
                child: Column(
                  children: [
                    QrImageView(
                      data: 'CR447BXK',
                      version: QrVersions.auto,
                      size: 220,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'CR447BXK',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Info card
            const InfoCard(
              title: 'BOGO Chicken Wraps',
              rows: [
                InfoRow(label: 'Restaurant', value: 'De Grill House'),
                InfoRow(label: 'Claim Code', value: 'CR447bXK'),
                InfoRow(label: 'Claimed at', value: '6:30 PM'),
                InfoRow(label: 'Valid until', value: '8:30 PM'),
              ],
            ),

            const SizedBox(height: 12),

            // How to use
            Container(
              width: width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.appClFAFAFA,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'How to use ?',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16,color: AppColors.blackColor),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Show this QR code to restaurant staff to redeem your deal',
                    style: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14,color: AppColors.grayColor),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: SizedBox(
          height: 52,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.appClCCFFE6, // light green
              foregroundColor: AppColors.appCl06C167,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            child:  Text('Ready to redeem',style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
          ),
        ),
      ),
    );
  }
}


