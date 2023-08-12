import 'package:booking_app/screens/hotel_view.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              right: AppLayout.getWidth(20),
              top: AppLayout.getHeight(20),
              bottom: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Gap(
                  AppLayout.getHeight(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(
                          AppLayout.getHeight(7),
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: AppLayout.getHeight(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(20),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/img_1.png'),
                        ),
                      ),
                    )
                  ],
                ),
                Gap(
                  AppLayout.getHeight(25),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(12),
                    vertical: AppLayout.getWidth(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentIcons.search_12_regular,
                        color: Color.fromARGB(255, 158, 158, 147),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(
            AppLayout.getHeight(5),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map(
                    (singleTicket) => (TicketView(
                      ticket: singleTicket,
                    )),
                  )
                  .toList(),
            ),
          ),
          Gap(
            AppLayout.getHeight(5),
          ),
          Container(
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              right: AppLayout.getWidth(20),
              top: AppLayout.getHeight(20),
              bottom: AppLayout.getHeight(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelCard(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
