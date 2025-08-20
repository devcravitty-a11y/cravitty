import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';
import '../../components/paths.dart';
import '../foodDetails/foodDetailsScreen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0,- 0.7),
            end: Alignment(0.0, -1.0),
            colors: [
              AppColors.whiteColor,
              AppColors.appClFFD4A5,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Location
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                '${AppPaths.iconsSvg}locationIcon.svg',),
                              SizedBox(width: 4),
                              Text(
                                'Mukkam',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                          Text(
                            'Health Centre Rd, Kozhikode, Kerala',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.appClFFD4A5,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),

                      ),
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          Image.asset(
                            '${AppPaths.imagesPath}RupeesCoin.png',
                            scale: 4.5,
                           ),
                          Text(
                            '850',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),)
                        ],
                      ),
                    ),
                    // Wallet and Profile
                    SizedBox(width: 12),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grayColor),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: AppColors.blackColor),
                      SizedBox(width: 12),
                      Text(
                        'Search Restaurant name or dish...',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Hot Deals Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      '${AppPaths.iconsSvg}fire.svg',
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Hot deals ending soon!',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Deals List
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    DealCard(
                      imageAsset: 'assets/burger.jpg', // You'll need to add this image
                      title: 'Burger + Fries Combo',
                      price: '₹149',
                      originalPrice: '₹249',
                      rating: '4.8',
                      restaurant: 'Burger Luange',
                      distance: '0.4km Health Centre Rd, Mukkam',
                      timeLeft: '2 Hour left',
                      endTime: 'Until 8:30 PM',
                      itemsLeft: '10 Left',
                    ),
                    SizedBox(height: 16),
                    DealCard(
                      imageAsset: 'assets/wrap.jpg', // You'll need to add this image
                      title: 'BOGO Chicken Wraps',
                      price: '₹130',
                      originalPrice: '₹260',
                      rating: '4.7',
                      restaurant: 'De Grill House',
                      distance: '0.5km Health Centre Rd, Mukkam',
                      timeLeft: '1 Hour left',
                      endTime: 'Until 7:30 PM',
                      itemsLeft: '8 Left',
                    ),     SizedBox(height: 16),
                    DealCard(
                      imageAsset: 'assets/wrap.jpg', // You'll need to add this image
                      title: 'BOGO Chicken Wraps',
                      price: '₹130',
                      originalPrice: '₹260',
                      rating: '4.7',
                      restaurant: 'De Grill House',
                      distance: '0.5km Health Centre Rd, Mukkam',
                      timeLeft: '1 Hour left',
                      endTime: 'Until 7:30 PM',
                      itemsLeft: '8 Left',
                    ),     SizedBox(height: 16),
                    DealCard(
                      imageAsset: 'assets/wrap.jpg', // You'll need to add this image
                      title: 'BOGO Chicken Wraps',
                      price: '₹130',
                      originalPrice: '₹260',
                      rating: '4.7',
                      restaurant: 'De Grill House',
                      distance: '0.5km Health Centre Rd, Mukkam',
                      timeLeft: '1 Hour left',
                      endTime: 'Until 7:30 PM',
                      itemsLeft: '8 Left',
                    ),     SizedBox(height: 16),
                    DealCard(
                      imageAsset: 'assets/wrap.jpg', // You'll need to add this image
                      title: 'BOGO Chicken Wraps',
                      price: '₹130',
                      originalPrice: '₹260',
                      rating: '4.7',
                      restaurant: 'De Grill House',
                      distance: '0.5km Health Centre Rd, Mukkam',
                      timeLeft: '1 Hour left',
                      endTime: 'Until 7:30 PM',
                      itemsLeft: '8 Left',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}

// class DealCard extends StatelessWidget {
//   final String imageAsset;
//   final String title;
//   final String price;
//   final String originalPrice;
//   final String rating;
//   final String restaurant;
//   final String distance;
//   final String timeLeft;
//   final String endTime;
//   final String itemsLeft;
//
//   const DealCard({
//     Key? key,
//     required this.imageAsset,
//     required this.title,
//     required this.price,
//     required this.originalPrice,
//     required this.rating,
//     required this.restaurant,
//     required this.distance,
//     required this.timeLeft,
//     required this.endTime,
//     required this.itemsLeft,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => FoodDealDetailsPage()),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 8,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Image with overlays
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//                   child: Container(
//                     height: 200,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.cover,
//
//                           image: AssetImage("assets/images/27582b3d4ead3824678ce2231f17022611430086.png")),
//
//                     ),
//                     // Placeholder for actual image
//                   ),
//                 ),
//                 // Time left badge
//                 Positioned(
//                   top: 12,
//                   left: 12,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(16),
//                     child: BackdropFilter(
//                       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                         decoration: BoxDecoration(
//                           color: Colors.black.withOpacity(0.8), // transparent blur effect
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               timeLeft,
//                               style: GoogleFonts.aBeeZee(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             const SizedBox(width: 4),
//                             SvgPicture.asset("${AppPaths.iconsSvg}logoTime.svg"),
//                             const SizedBox(width: 4),
//                             Text(
//                               endTime,
//                               style: GoogleFonts.aBeeZee(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Items left badge
//                 Positioned(
//                   bottom: 12,
//                   left: 12,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(16),
//                     child: BackdropFilter(
//                       filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                         decoration: BoxDecoration(
//                           color: Colors.black.withValues(alpha: 0.8),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Text(
//                           itemsLeft,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Progress bar
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: SizedBox(
//                     height: 6,
//                     child: CustomProgressBar(
//                       total: 8,
//                       count: 6,),
//                   ),
//                 ),
//               ],
//             ),
//
//             // Content
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Text(
//                         price,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         originalPrice,
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                           decoration: TextDecoration.lineThrough,
//                         ),
//                       ),
//                       SizedBox(width: 18),
//                       Container(
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(colors: [
//                               AppColors.appClCCFFE6,
//                               AppColors.whiteColor,
//                             ])
//
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.star, color: Colors.green, size: 16),
//                             SizedBox(width: 4),
//                             Text(
//                               rating,
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: AppColors.appCl06C167,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ],
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     restaurant,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on, color: Colors.grey, size: 14),
//                       SizedBox(width: 4),
//                       Text(
//                         distance,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class DealCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String price;
  final String originalPrice;
  final String rating;
  final String restaurant;
  final String distance;
  final String timeLeft;
  final String endTime;
  final String itemsLeft;

  const DealCard({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.restaurant,
    required this.distance,
    required this.timeLeft,
    required this.endTime,
    required this.itemsLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoodDealDetailsPage()),
        );
      },
      child: SizedBox(
        width: width*.9,
        child: Column(
          children: [
            Stack(
              children: [
                SlantedRoundedCardForHome(
                  width: double.infinity,
                  height: 260 ,
                  tilt: 38,
                  radius: 40,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 260 ,
                    width:width*.9 ,

                    // color: Colors.red ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  height: 130,
                                  child: Image.asset("assets/images/32fbe01e155fd472b7c298c3d45407b3326da998.png"),),
                            ),

                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 130,

                                child: Column(
                                  spacing: 5,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '₹149',
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black.withOpacity(0.95),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          '₹249',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black.withOpacity(0.45),
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          gradient:  LinearGradient(
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft,
                                            colors: [
                                              Color.fromARGB(0, 255, 255, 255), // rgba(255,255,255,0)
                                              Color(0xFFFFD4A5),
                                            ],
                                            stops: [
                                              0.0,   // clamped from -0.3542 (not allowed in Flutter)
                                              1.0,   // 100%
                                            ],


                                          )
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(Icons.star_rounded, size: 18, color: Color(0xFFFF7A00)),
                                          const SizedBox(width: 4),
                                          Text(
                                            '4.7',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black.withOpacity(0.85),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    pill(
                                      bg: AppColors.appClF83446,
                                      icon: Icons.info,
                                      label: '10 More left',
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Burger + Fries Combo',
                                style: GoogleFonts.inter(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2 Hour left',
                                    style: TextStyle(
                                      color: AppColors.appPrimaryColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(width: 8),

                                  SvgPicture.asset("${AppPaths.iconsSvg}timer_de.svg"),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Until 8:30 PM',
                                    style: TextStyle(
                                      color: AppColors.appPrimaryColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),


                              // Store name + distance/address
                              Text(
                                'Burger Luange',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.95),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(Icons.place_outlined, size: 18, color: Colors.grey),
                                  const SizedBox(width: 4),
                                  Text(
                                    '0.5km Health Centre Rd, Mukkam',
                                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )


                      ],
                    ),
                  ),
                ),


              ],
            ),


          ],
        ),
      ),
    );
  }
}



class SlantedRoundedCardForHome extends StatelessWidget {
  final double height;
  final double width;
  final double radius; // corner radius
  final double tilt; // vertical offset between left and right top

  const SlantedRoundedCardForHome({
    super.key,
    this.height = 220,
    this.width = 320,
    this.radius = 20,
    this.tilt = 28, // increase for a steeper slant
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SlantedPainterHome(
        color: AppColors.appClFFF6EC, // light cream
        radius: radius,
        tilt: tilt,
      ),
      size: Size(width, height),
    );
  }
}

class _SlantedPainterHome extends CustomPainter {
  final Color color;
  final double radius;
  final double tilt;

  _SlantedPainterHome({
    required this.color,
    required this.radius,
    required this.tilt,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final r = radius;
    final paint = Paint()..color = color;

    // Points: topLeft is lower than topRight by `tilt`
    final topLeft = Offset(15, tilt);
    final topRight = Offset(size.width, 0);
    final bottomRight = Offset(size.width, size.height);
    final bottomLeft = Offset(0, size.height);

    final path = Path()
    // move to start with corner arc approximation
      ..moveTo(topLeft.dx + r, topLeft.dy)
    // top slanted edge with right arc
      ..lineTo(topRight.dx - r, topRight.dy)
      ..quadraticBezierTo(
        topRight.dx,
        topRight.dy,
        topRight.dx,
        topRight.dy + r,
      )
    // right edge
      ..lineTo(bottomRight.dx, bottomRight.dy - r)
      ..quadraticBezierTo(
        bottomRight.dx,
        bottomRight.dy,
        bottomRight.dx-r ,
        bottomRight.dy,
      )
    // bottom edge
      ..lineTo(bottomLeft.dx + r, bottomLeft.dy)
      ..quadraticBezierTo(
        bottomLeft.dx,
        bottomLeft.dy,
        bottomLeft.dx,
        bottomLeft.dy-r ,
      )
    // left edge back to top-left
      ..lineTo(topLeft.dx, topLeft.dy + r)
      ..quadraticBezierTo(topLeft.dx, topLeft.dy, topLeft.dx + r, topLeft.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_SlantedPainterHome oldDelegate) =>
      oldDelegate.color != color ||
          oldDelegate.radius != radius ||
          oldDelegate.tilt != tilt;
}
