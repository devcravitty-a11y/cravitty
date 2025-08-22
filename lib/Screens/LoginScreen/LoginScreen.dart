import 'package:cravitty/Screens/UserScreens/ClaimDetails/ClaimDetailsScreen.dart';
import 'package:cravitty/Screens/LoginScreen/LoginProviders/LoginProvider.dart';
import 'package:cravitty/components/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../components/colors.dart';
import '../../components/styles.dart';
import '../UserScreens/BottomNavigation.dart';
import '../UserScreens/HomeScreen/HomeScreen.dart';
import 'Widgets/tabBarWidget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Consumer<LoginProvider>(
      builder: (context,loginPro,_) {
        return SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor:loginPro.currentIndex == 0 ? AppColors.appThemeColor :AppColors.appClFFECD3 ,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // HEADER SECTION (Image + Logo + White curve)
                  Container(
                    height: 274,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('${AppPaths.imagesPath}imageLogin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: SvgPicture.asset("${AppPaths.iconsSvg}whiteLogo.svg"),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:loginPro.currentIndex == 0 ? AppColors.appThemeColor :AppColors.appClFFECD3 ,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // LOGIN FORM SECTION
                  Container(
                    width: double.infinity,
                    color:loginPro.currentIndex == 0 ? AppColors.appThemeColor :AppColors.appClFFECD3 ,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
                      child: Column(
                        children: [

                          TabButton(width: width),
                          SizedBox(height: 28),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              loginPro.isLogin ? 'Login' : 'Sign Up',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Please enter your details to proceed',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.appCl6D6D6D,
                              ),
                            ),
                          ),
                          SizedBox(height: 22),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.appCl6D6D6D,
                                ),
                                children: [
                                  TextSpan(text: 'Email '),
                                  TextSpan(text: '*', style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.appPrimaryColor,
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          TextFormField(
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: loginScreenTextFormBorder,
                              disabledBorder: loginScreenTextFormBorder,
                              enabledBorder: loginScreenTextFormBorder,
                              border:loginScreenTextFormBorder,
                              contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                            ),
                          ),
                          SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.appCl6D6D6D,
                                ),
                                children: [
                                  TextSpan(text: 'Password '),
                                  TextSpan(text: '*', style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.appPrimaryColor,
                                  ),),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 4),

                              TextFormField(
                                obscureText: true,
                                style: TextStyle(fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: loginScreenTextFormBorder,
                                  disabledBorder: loginScreenTextFormBorder,
                                  enabledBorder: loginScreenTextFormBorder,
                                  border:loginScreenTextFormBorder,
                                  contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                                ),
                              ),
                         if( loginPro.isLogin)
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password',
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: AppColors.appPrimaryColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.appPrimaryColor,

                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 18),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.appPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 0,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomNavigation()));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 28),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: OutlinedButton.icon(
                              icon: SvgPicture.asset(
                                '${AppPaths.iconsSvg}googleIcon.svg',),
                              label: Text(

                                  loginPro.isLogin ? 'Sign in with Google': 'Sign up with Google',
                                  style: TextStyle(color: Colors.black, fontSize: 16)),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color:AppColors.appClE7E7E7),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                loginPro.isLogin
                                    ? "Don't have an account? "
                                    : "Already have an account? ",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  loginPro.toggleLoginSignUp();
                                },
                                child: Text(
                                  loginPro.isLogin ? 'Sign up' : 'Login',
                                  style: TextStyle(
                                    color: AppColors.appPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.appPrimaryColor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),                        SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}

// Tab Button Widget
