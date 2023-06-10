import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/app_assets.dart';
import '../styles/app_colors.dart';

class CaredBestdeal extends StatefulWidget {
  final String imagePath;
  final String text;
  final String size;
  final bool isFavorite;
  final double currentPrice;
  final double discountedPrice;
  final VoidCallback onPressed;

  const CaredBestdeal({
    super.key,
    required this.imagePath,
    required this.text,
    required this.size,
    required this.isFavorite,
    required this.currentPrice,
    required this.discountedPrice,
    required this.onPressed,
  });

  @override
  _CaredBestdealState createState() => _CaredBestdealState();
}

class _CaredBestdealState extends State<CaredBestdeal> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160.0,
          height: 220.0,
          margin: const EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 10.0,
                      ),
                      child: Image.asset(
                        widget.imagePath,
                        width: 44.0,
                        height: 90.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                widget.text,
                style: GoogleFonts.poppins(
                  height: 1.5,
                  color: AppColors.blackColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5.0),
              Row(
                children: [
                  Text(
                    "${widget.size}ml",
                    style: GoogleFonts.poppins(
                      height: 1.0,
                      color: AppColors.greyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$${widget.currentPrice}',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    '\$${widget.discountedPrice}',
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColors.greyColor,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 61.0,
                    height: 34.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.primaryColor,
                    ),
                    child: TextButton(
                      onPressed: widget.onPressed,
                      child: Text(
                        'Add',
                        style: GoogleFonts.poppins(
                          color: AppColors.whiteColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 14.5,
          top: 10.33,
          child: SvgPicture.asset(
            AppAssets.favouriteIcon,
            height: 13.35,
            width: 15.0,
          ),
        ),
      ],
    );
  }
}
