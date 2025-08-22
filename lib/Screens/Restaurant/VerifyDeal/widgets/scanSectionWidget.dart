
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanSectionWidget extends StatelessWidget {
  const ScanSectionWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      width: width*.9,
      height: 300,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color:AppColors.appPrimaryColor,width: 3),
          borderRadius: BorderRadius.circular(30)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(27),
          child: MobileScanner(
              errorBuilder: (context, error) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      'Camera error: ${error.errorCode.name}',
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
        ),
      ),
    );
  }
}