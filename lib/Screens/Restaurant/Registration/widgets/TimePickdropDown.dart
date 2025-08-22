import 'package:cravitty/Providers/ReataurantProviders/RegistrationProvider.dart';
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpeningHoursDropdown extends StatelessWidget {
  const OpeningHoursDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantRegistrationProvider>(
      builder: (context, registrationProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label with required asterisk
           Row(
          children: [
            Text("Opening Hours",style: GoogleFonts.inter(
              color: AppColors.appCl6D6D6D,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),),
            Text("*",style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,color: Colors.red)),
          ],
        ),
            const SizedBox(height: 8),
            
            // Dropdown container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: registrationProvider.selectedOpeningHours,
                  hint: const Text(
                    '10 AM - 11 PM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                  ),
                  isExpanded: true,
                  items: registrationProvider.openingHoursList.map((String hours) {
                    return DropdownMenuItem<String>(
                      value: hours,
                      child: Text(
                        hours,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    registrationProvider.setSelectedOpeningHours(newValue);
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
