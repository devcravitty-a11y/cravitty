import 'package:cravitty/Screens/UserScreens/HomeScreen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../Providers/UserProviders/BottomNavProvider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = const [
      HomeScreen(),
      MyDealsPage(),
      NotificationPage(),
      ProfilePage(),
    ];

    final Color activeColor = const Color(0xFFFF6A00); // orange
    final Color inactiveColor = const Color(0xFF9E9E9E); // grey

    return Consumer<BottomNavProvider>(
      builder: (context, nav, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: nav.current,
            children: pages,
          ),
          bottomNavigationBar: Container(

            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: nav.current,
              elevation: 0,
              backgroundColor: Colors.white,
              selectedItemColor: activeColor,
              unselectedItemColor: inactiveColor,
              selectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              onTap: nav.setIndex,
              items:  [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/BottomNavAsset/Home.svg'),
                  activeIcon: SvgPicture.asset('assets/BottomNavAsset/Home_Selected.svg'),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/BottomNavAsset/MyDeals.svg'),
                  activeIcon: SvgPicture.asset('assets/BottomNavAsset/MyDeals_Selected.svg'),
                  label: 'My Deals',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/BottomNavAsset/Notification.svg'),
                  activeIcon: SvgPicture.asset('assets/BottomNavAsset/Notification_Selected.svg'),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/BottomNavAsset/user.svg'),
                  activeIcon: SvgPicture.asset('assets/BottomNavAsset/user_selected.svg'),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


class MyDealsPage extends StatelessWidget {
  const MyDealsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const _CenteredText('My Deals');
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const _CenteredText('Notification');
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const _CenteredText('Profile');
  }
}

class _CenteredText extends StatelessWidget {
  final String text;
  const _CenteredText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = <Offer>[
      Offer('Burger + Fries Combo', 149, 249, OfferStatus.readyToRedeem, '27/08/2025'),
      Offer('BOGO Chicken Wraps', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('30% Off on Nuggets', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('30% Off on Nuggets', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('25% Off on Sandwiches', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Burger + Fries Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Burger + Fries Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Wrap + Drink Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Burger + Fries Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Wrap + Drink Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Burger + Fries Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
      Offer('Wrap + Drink Combo', 149, 249, OfferStatus.claimed, '27/08/2025'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: offers.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) => OfferTile(offer: offers[index]),
      ),
      backgroundColor: Colors.white,
    );
  }
}

enum OfferStatus { claimed, readyToRedeem, expired }

class Offer {
  final String title;
  final int priceNow;
  final int priceWas;
  final OfferStatus status;
  final String dateStr;

  Offer(this.title, this.priceNow, this.priceWas, this.status, this.dateStr);
}

class OfferTile extends StatelessWidget {
  final Offer offer;
  const OfferTile({super.key, required this.offer});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final status = _statusMeta(offer.status, theme);

    return InkWell(
      onTap: () {}, // TODO: navigate or redeem
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: title + prices + status chip (below title on left)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(offer.title, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '₹${offer.priceNow}',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '₹${offer.priceWas}',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Colors.black54,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const Spacer(),
                      // Status chip (right-aligned on same row, like screenshot)
                      _StatusChip(
                        label: status.label,
                        bg: status.bg,
                        fg: status.fg,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // Right: date
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 2),
                Text(
                  offer.dateStr,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _StatusMeta _statusMeta(OfferStatus s, ThemeData theme) {
    switch (s) {
      case OfferStatus.claimed:
        return _StatusMeta(
          label: 'Claimed',
          bg: const Color(0xFFE6FFF5),
          fg: const Color(0xFF00C389),
        );
      case OfferStatus.readyToRedeem:
        return _StatusMeta(
          label: 'Ready to redeem',
          bg: const Color(0xFFFFF4D6),
          fg: const Color(0xFFB88700),
        );
      case OfferStatus.expired:
        return _StatusMeta(
          label: 'Expired',
          bg: const Color(0xFFF4F4F4),
          fg: Colors.grey.shade700,
        );
    }
  }
}

class _StatusMeta {
  final String label;
  final Color bg;
  final Color fg;
  _StatusMeta({required this.label, required this.bg, required this.fg});
}

class _StatusChip extends StatelessWidget {
  final String label;
  final Color bg;
  final Color fg;

  const _StatusChip({
    required this.label,
    required this.bg,
    required this.fg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
          color: fg,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}