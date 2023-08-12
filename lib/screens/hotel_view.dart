import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.getWidth(250),
      height: AppLayout.getHeight(350),
      margin: EdgeInsets.only(
        left: AppLayout.getWidth(16),
        right: AppLayout.getWidth(8),
        bottom: AppLayout.getHeight(8),
      ),
      padding: EdgeInsets.all(AppLayout.getWidth(15)),
      decoration: const BoxDecoration(
        color: Color(0xFF526799),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppLayout.getHeight(250),
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                ),
              ],
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            '${hotel['place']}',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            '${hotel['destination']}',
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
