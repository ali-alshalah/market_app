import 'package:flutter/material.dart';
import 'package:flutter_task/styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../config/app_assets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../widget/cared.dart';
import '../../../../../widget/cared_bestdeal.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 18.w,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 35.74.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.locationIcon,
                      width: 17.25.w,
                      height: 20.h,
                    ),
                    SizedBox(width: 13.38.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Home',
                              style: GoogleFonts.poppins(
                                height: 1.h,
                                color: AppColors.blackColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 7.75.w),
                            SvgPicture.asset(
                              AppAssets.arrowIcon,
                              height: 7.88.h,
                              width: 15.89.w,
                            ),
                          ],
                        ),
                        SizedBox(height: 8.79.h),
                        Row(
                          children: [
                            Text(
                              '6391 Elgin St. Celina, Delaware 10299',
                              style: GoogleFonts.poppins(
                                height: 1.h,
                                color: AppColors.greyColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.cartIcon,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Container(
                      width: 275.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.greyColor.withOpacity(0.05),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColors.blackColor,
                          ),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.poppins(
                            color: AppColors.greyColor.withOpacity(0.80),
                            height: 1.h,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.05),
                              width: 1.w,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.05),
                              width: 1.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(
                      AppAssets.buttonIcon,
                      width: 50.w,
                      height: 50.h,
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop By Category',
                      style: GoogleFonts.poppins(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.h,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 29.h),
                SizedBox(
                  height: 130.h,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const CardItem(
                        imagePath: AppAssets.img1,
                        title: 'Vegetables\n    & Fruits',
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 130.h,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const CardItem(
                        imagePath: AppAssets.img1,
                        title: 'Vegetables\n    & Fruits',
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  AppAssets.banner,
                  height: 177.h,
                  width: 335.w,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Deal',
                      style: GoogleFonts.poppins(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.h,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return CaredBestdeal(
                        imagePath: AppAssets.img2,
                        currentPrice: 12,
                        discountedPrice: 14,
                        isFavorite: false,
                        onPressed: () {},
                        size: "500",
                        text: "Surf Excel Easy WashDetergent Power",
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
