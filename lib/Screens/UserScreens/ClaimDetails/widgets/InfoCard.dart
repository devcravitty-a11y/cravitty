import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/colors.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final List<InfoRow> rows;

  const InfoCard({super.key, required this.title, required this.rows});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color:AppColors.appClFFF6EC,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 16
            ),
          ),
          const SizedBox(height: 5),
          ...rows.map(
                (r) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      r.label,
                      style: GoogleFonts.inter(
                        color: AppColors.grayColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(":",style: TextStyle(color: AppColors.blackColor,fontSize: 14),),
                  Expanded(
                    flex: 5,
                    child: Text(
                      r.value,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class InfoRow {
  final String label;
  final String value;
  const InfoRow({required this.label, required this.value});
}