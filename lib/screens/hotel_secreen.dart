import 'package:booking_app/utiles/app_layout.dart';
import 'package:booking_app/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(hotel['price']);
    final size = AppLayoute.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 360,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 15, bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Colors.black12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/${hotel['image']}'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLine2,
          ),
          const Gap(3),
          Text(
            hotel['hotelName'],
            style: Styles.headLine3,
          ),
          const Gap(10),
          Text(
            '${hotel['price']}/night',
            style: Styles.headLine3,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // print('tapped!');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'Resrve Now',
                    style: Styles.headLine3.copyWith(color: Colors.white),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
