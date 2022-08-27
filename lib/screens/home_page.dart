import 'package:booking_app/screens/hotel_secreen.dart';
import 'package:booking_app/screens/tickect_card.dart';
import 'package:booking_app/utiles/styles.dart';
import 'package:booking_app/widgets/list_hotel_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
          const Gap(40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.textStyle,
                        ),
                        const Gap(5),
                        Text(
                          'Booking MENU',
                          style: Styles.headLine1,
                        )
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/airline.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Row(
                      children: const [
                        Icon(FluentSystemIcons.ic_fluent_search_filled),
                        Gap(5),
                        Text('Search...')
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcomming Flight',
                      style: Styles.headLine2,
                    ),
                    InkWell(
                      child: Text(
                        'View all',
                        style: Styles.headLine4,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketCard(),
                TicketCard(),
                TicketCard(),
              ],
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLine2,
                ),
                InkWell(
                  child: Text(
                    'View all',
                    style: Styles.headLine4,
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                    children: hotelList
                        .map((singelHotel) => HotelScreen(
                              hotel: singelHotel,
                            ))
                        .toList()),
              ))

          // TicketCard()
        ]));
  }
}
