import 'package:cravitty/Screens/ClaimDetails/ClaimDetailsScreen.dart';
import 'package:cravitty/components/Widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/colors.dart';
import '../../components/paths.dart';

class FoodDealDetailsPage extends StatelessWidget {
  const FoodDealDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.appClFFF6EC,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: CustomAppBar(
            onBackPress: () {
              Navigator.pop(context);
            },
            title: "Details",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: AppColors.whiteColor,
                child: Stack(
                  children: [
          
                    Container(
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SlantedRoundedCard(
                            width: double.infinity,
                            height: 130,
                            tilt: 98,
                            radius: 40,
                          ),
          
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: SizedBox(
                        height: 230,
                        // color: Colors.red,
                        child: Image.asset("assets/images/image 20.png"),
                      ),
                    ),
          
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                color: AppColors.appClFFF6EC,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Text(
                            'Burger + Fries Combo',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '₹149',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromARGB(
                                  0,
                                  255,
                                  255,
                                  255,
                                ), // rgba(255,255,255,0)
                                Color(0xFFFFD4A5),
                              ],
                              stops: [
                                0.0, // clamped from -0.3542 (not allowed in Flutter)
                                1.0, // 100%
                              ],
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                size: 18,
                                color: Color(0xFFFF7A00),
                              ),
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
                        ),
                      ],
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
                    const SizedBox(height: 18),
          
                    // Store name + distance/address
                    Text(
                      'Burger Luange',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.95),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '0.5km Health Centre Rd, Mukkam',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.appClFFECD3,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ...[
                            'Valid for dine-in only',
                            'Cannot be combined with other offers',
                            'Valid until 8:30 PM today',
                            'Limited time offer – 2 hours remaining',
                            'Only 15 deals available',
                          ].map(
                            (t) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 6,
                                    height: 6,
                                    margin: const EdgeInsets.only(top: 7),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      t,
                                      style: TextStyle(
                                        height: 1.3,
                                        color: AppColors.appCl454545,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
          
                    // Bottom buttons
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColors.whiteColor,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: AppColors.appCl06C167,
                                width: 1,
                              ),
                              foregroundColor: AppColors.appCl06C167,
                            ),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              '${AppPaths.iconsSvg}/call.svg',
                            ),
                            label: const Text(
                              'Call',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: OutlinedButton.icon(
          
                            style: OutlinedButton.styleFrom(backgroundColor: AppColors.whiteColor,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
          
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: const BorderSide(
                                color: AppColors.appCl068BEE,
                                width: 1,
                              ),
                              foregroundColor: AppColors.appCl068BEE,
                            ),
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              '${AppPaths.iconsSvg}/navigation-04.svg',
                            ),
                            label: const Text(
                              'Direction',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // DealCard()
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: width * 0.9,
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
                MaterialPageRoute(builder: (context) => ClaimDetailsScreen()),
              );
            },
            child: Text(
              'Claim this Deal',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

Widget pill({
  required Color bg,
  required IconData icon,
  required String label,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: bg,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(14),
        bottomLeft: Radius.circular(14),
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.info_outline, color: Colors.white, size: 16),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
  );
}

class SlantedRoundedCard extends StatelessWidget {
  final double height;
  final double width;
  final double radius; // corner radius
  final double tilt; // vertical offset between left and right top

  const SlantedRoundedCard({
    super.key,
    this.height = 220,
    this.width = 320,
    this.radius = 20,
    this.tilt = 28, // increase for a steeper slant
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _SlantedPainter(
        color: AppColors.appClFFF6EC, // light cream
        radius: radius,
        tilt: tilt,
      ),
      size: Size(width, height),
    );
  }
}

class _SlantedPainter extends CustomPainter {
  final Color color;
  final double radius;
  final double tilt;

  _SlantedPainter({
    required this.color,
    required this.radius,
    required this.tilt,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final r = radius;
    final paint = Paint()..color = color;

    // Points: topLeft is lower than topRight by `tilt`
    final topLeft = Offset(0, tilt);
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
        bottomRight.dx ,
        bottomRight.dy,
      )
      // bottom edge
      ..lineTo(bottomLeft.dx + r, bottomLeft.dy)
      ..quadraticBezierTo(
        bottomLeft.dx,
        bottomLeft.dy,
        bottomLeft.dx,
        bottomLeft.dy ,
      )
      // left edge back to top-left
      ..lineTo(topLeft.dx, topLeft.dy + r)
      ..quadraticBezierTo(topLeft.dx, topLeft.dy, topLeft.dx + r, topLeft.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_SlantedPainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.radius != radius ||
      oldDelegate.tilt != tilt;
}
