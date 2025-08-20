import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';
import '../../components/styles.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
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
              SizedBox(height: 20),
              RegistrationFormWidget(title: "Restaurant Name ", hint: "Restaurant Name "),
              SizedBox(height: 10),
              RegistrationFormWidget(title: "Owner/ Manager Name ", hint: "Owner/ Manager Name "),
              SizedBox(height: 10),
              RegistrationFormWidget(title: "Phone Number ", hint: "Phone Number "),
              SizedBox(height: 10),
              RegistrationFormWidget(title: "Full Address(Street, Area, Landmark) ", hint: "Full Address "),
              SizedBox(height: 10),
              RegistrationFormWidget(title: "PinCode ", hint: "PinCode "),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationFormWidget extends StatelessWidget {
  final String title;
  final String hint;
  final List<TextInputFormatter>? inputFormatters;
  
  const RegistrationFormWidget({
    super.key, required this.title, required this.hint, this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,style: GoogleFonts.inter(
              color: AppColors.appCl6D6D6D,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),),
            Text("*",style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,color: Colors.red)),
          ],
        ),
        SizedBox(height: 2),
        TextFormField(
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            border: regFormBorder,
            focusedBorder: regFormBorder,
            enabledBorder: regFormBorder,
            filled: false,
            hintText: hint,
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.blackColor,
            ),
          ),
        ),
      ],
    );
  }
}
