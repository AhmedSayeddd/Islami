import 'package:flutter/material.dart';
import 'package:islami/core/app_colors.dart';
import 'package:islami/core/app_style.dart';
import 'package:islami/models/suar_model.dart';

// ignore: must_be_immutable
class RecentlyItam extends StatelessWidget {
  RecentlyItam({super.key, required this.suraModel});
  SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                Text(
                  suraModel.nameEn,
                  style: AppStyle.titleStyle.copyWith(
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  suraModel.nameAr,
                  style: AppStyle.titleStyle.copyWith(
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "${suraModel.verses} verses",
                  style: AppStyle.titleStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/img_most_recent.png",
              width: 153,
              height: 136,
            ),
          ),
        ],
      ),
    );
  }
}
