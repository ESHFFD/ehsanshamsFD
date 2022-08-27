import 'package:booking_app/utiles/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import '../widgets/circular_widget.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /* this is top of ticket/card */
            Container(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('NYC',
                            style:
                                Styles.headLine3.copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        const WidgetContainer(),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 2,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 0,
                              child: const Icon(
                                FluentSystemIcons.ic_fluent_airplane_filled,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ])),
                        const WidgetContainer(),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          'LON',
                          style: Styles.headLine3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              'New-york',
                              style: Styles.headLine4
                                  .copyWith(color: Colors.white),
                            )),
                        Text(
                          '8H 30M',
                          style: Styles.headLine4.copyWith(color: Colors.white),
                        ),
                        SizedBox(
                            width: 100,
                            child: Text(
                              'London',
                              style: Styles.headLine4
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.end,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            /* this is middle of the card . */
            Container(
              color: Colors.indigoAccent,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                      width: 4,
                                      height: 2,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      )),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)))),
                  ),
                ],
              ),
            ),
            /*this is end part of card */
            Container(
                decoration: const BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '1 May',
                            style:
                                Styles.headLine3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Date',
                            style:
                                Styles.headLine4.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          children: [
                            Text(
                              '08:00 AM',
                              style: Styles.headLine4
                                  .copyWith(color: Colors.white),
                            ),
                            const Gap(5),
                            Text('Departur Time',
                                style: Styles.headLine4
                                    .copyWith(color: Colors.white))
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style:
                                Styles.headLine3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text('novamber'.toUpperCase(),
                              style: Styles.headLine4
                                  .copyWith(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}




// Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.indigoAccent,
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(20),
//                       bottomRight: Radius.circular(20)),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '1 May',
//                             style:
//                                 Styles.headLine3.copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             'Date',
//                             style:
//                                 Styles.headLine4.copyWith(color: Colors.white),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             '08:00 AM',
//                             style:
//                                 Styles.headLine3.copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             'Departur time',
//                             style:
//                                 Styles.headLine4.copyWith(color: Colors.white),
//                           )
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             '23',
//                             style:
//                                 Styles.headLine3.copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             'Novamber',
//                             style:
//                                 Styles.headLine4.copyWith(color: Colors.white),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ))