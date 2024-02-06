import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants.dart';


Widget buildSubscriptionItem({
  required String svgPictureAsset,
  required String title,
  required String price,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 70,
      decoration: BoxDecoration(
        color: myblack,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: greyContainer),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SvgPicture.asset(svgPictureAsset),
          SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  );
}
