import 'package:cravitty/Screens/Restaurant/Registration/widgets/RadioButtonForTypeWidget.dart';
import 'package:cravitty/Screens/Restaurant/Registration/widgets/RegitrationForm.dart';
import 'package:cravitty/Screens/Restaurant/Registration/widgets/TimePickdropDown.dart';
import 'package:cravitty/Screens/Restaurant/Registration/widgets/imageUploadWidgets.dart';
import 'package:cravitty/Screens/Restaurant/Registration/widgets/locationPickButton.dart';
import 'package:cravitty/components/Widgets/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/colors.dart';
import '../../../components/styles.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 18,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                RegistrationFormWidget(title: "Restaurant Name ", hint: "Restaurant Name "),
                RegistrationFormWidget(title: "Owner/ Manager Name ", hint: "Owner/ Manager Name "),
                RegistrationFormWidget(title: "Phone Number ", hint: "Phone Number "),
                RegistrationFormWidget(title: "Full Address(Street, Area, Landmark) ", hint: "Full Address "),
                RegistrationFormWidget(title: "PinCode ", hint: "PinCode "),
                LocationPickButton(),
                OpeningHoursDropdown(),
            
                RestaurantTypeSelector(),
                ImageUploadWidget(title: "Upload Restaurant logo",),
                              ImageUploadWidget(title: "Upload Restaurant Image",),
                Basicbutton(title: "Register", onPressed: (){},),            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
