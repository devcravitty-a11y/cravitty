import 'package:cravitty/Screens/Restaurant/Registration/widgets/RegitrationForm.dart';
import 'package:cravitty/Screens/Restaurant/Registration/widgets/locationPickButton.dart';
import 'package:cravitty/components/Widgets/appBar.dart';
import 'package:cravitty/components/colors.dart';
import 'package:flutter/material.dart';

class CreateDealsScreen extends StatelessWidget {
  const CreateDealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(90), // custom height
        child: CustomAppBar(title: 'Create Deals', onBackPress: () {
          Navigator.pop(context);})
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 18,
          children: [
            SizedBox(height: 10,),
            RegistrationFormWidget(
              hint: "Deal Title",
              title: "Deal Title",
            ),

            Row(
              children: [
                Expanded(child: RegistrationFormWidget(
              hint: "Original Price",
              title: "Original Price",
            ), ),
            SizedBox(width: 10,),
                Expanded(child: RegistrationFormWidget(
              hint: "Deal Price",
              title: "Deal Price",
            ), ),
              ],
            ),
            Row(
              children: [
                Expanded(child: RegistrationFormWidget(
              hint: "Quantity Available",
              title: "Quantity Available",
            ), ),
            SizedBox(width: 10,),
                Expanded(child: RegistrationFormWidget(
              hint: "Valid Until",
              title: "Valid Until",
            ), ),
              ],
            ),
            RegistrationFormWidget(
              isRequired: false,
              hint: "Description",
              title: "Deal Description",
            ),
          ],
        ),
      ),
      );
  }
}