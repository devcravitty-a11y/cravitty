import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/ReataurantProviders/RegistrationProvider.dart';

class RestaurantTypeSelector extends StatelessWidget {
  const RestaurantTypeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantRegistrationProvider>(
      builder: (context, provider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title with asterisk
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Restaurant Type',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            
            // Radio buttons row
            Row(
              children: [
                // Both option
                Expanded(
                  child: _buildRadioOption(
                    context: context,
                    value: RestaurantType.both,
                    label: 'Both',
                    isSelected: provider.selectedRestaurantType == RestaurantType.both,
                    onTap: () => provider.setRestaurantType(RestaurantType.both),
                  ),
                ),
                const SizedBox(width: 12),
                
                // Non-Veg option
                Expanded(
                  child: _buildRadioOption(
                    context: context,
                    value: RestaurantType.nonVeg,
                    label: 'Non-Veg',
                    isSelected: provider.selectedRestaurantType == RestaurantType.nonVeg,
                    onTap: () => provider.setRestaurantType(RestaurantType.nonVeg),
                  ),
                ),
                const SizedBox(width: 12),
                
                // Veg option
                Expanded(
                  child: _buildRadioOption(
                    context: context,
                    value: RestaurantType.veg,
                    label: 'Veg',
                    isSelected: provider.selectedRestaurantType == RestaurantType.veg,
                    onTap: () => provider.setRestaurantType(RestaurantType.veg),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildRadioOption({
    required BuildContext context,
    required RestaurantType value,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16  ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.appClFFD4A5: Colors.white,
          border: Border.all(
            color: isSelected ?AppColors.appClFFD4A5 : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color:  Colors.black87,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected?AppColors.appPrimaryColor:AppColors.blackColor ,
                  width: 2,
                ),
                color:isSelected? AppColors.appClFFD4A5:AppColors.whiteColor,
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.appPrimaryColor,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
