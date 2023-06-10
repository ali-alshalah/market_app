import 'package:flutter/material.dart';
import 'package:flutter_task/features/layout/presentation/cart/cart_Screen.dart';
import 'package:flutter_task/features/layout/presentation/favourite/favourite_Screen.dart';
import '../../../config/app_assets.dart';
import 'home/presentation/home_Screen.dart';
import 'profile/presentation/profile_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  List<Widget> tabs = [
    HomeView(),
    FavouriteView(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.homeIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.favouriteIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.cartIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.profileIcon),
            label: '',
          ),
        ],
      ),
    );
  }
}
