import 'package:cravitty/Providers/ReataurantProviders/RegistrationProvider.dart';
import 'package:cravitty/Screens/Restaurant/CreateDeals/CreateDealsScreen.dart';
import 'package:cravitty/Screens/Restaurant/HomeScreen/RestuarantHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/UserProviders/BottomNavProvider.dart';
import 'Screens/Restaurant/Registration/RegistrationScreen.dart';
import 'Screens/UserScreens/ClaimDetails/ClaimDetailsScreen.dart';
import 'Screens/UserScreens/HomeScreen/HomeScreen.dart';
import 'Screens/LoginScreen/LoginProviders/LoginProvider.dart';
import 'Screens/LoginScreen/LoginScreen.dart';
import 'Screens/UserScreens/foodDetails/foodDetailsScreen.dart';
import 'Screens/splashScreen.dart';
import 'Screens/test.dart';
import 'components/colors.dart';
import 'components/textStyles.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppColors.load();
  await AppTextStyles.load();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add your providers here
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavProvider()),
        ChangeNotifierProvider(create: (context) => RestaurantRegistrationProvider()),
      ],
      child: MaterialApp(
        showSemanticsDebugger: false,
        title: 'Cravitty',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: RegistrationScreen(),
      ),
    );
  }
}

