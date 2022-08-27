import 'package:booking_app/utiles/app_layout.dart';
import 'package:booking_app/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/list_user.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  DateTime? _selectedDate;
  // List<Map<String, dynamic>> foundUser = [];
  void dataPicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2024),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  // void runFilter(String enteredKeyword) {
  //   List<Map<String, dynamic>> result = [];
  //   if (enteredKeyword.isEmpty) {
  //     result = userList;
  //   } else {
  //     // result = userList
  //     //     .where((user) =>
  //     //         user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
  //     //     .toList();
  //     result = userList
  //         .where((user) =>
  //             user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //   }
  //   setState(() {
  //     foundUser = result;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final size = AppLayoute.getSize(context);
    return Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Searching data'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'What are you\n looking for?',
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: Styles.headLine1,
                ),
                const Gap(40),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadiusDirectional.circular(50)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: 170,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "Airline Ticket",
                            style: Styles.headLine4,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: 170,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "Hotel",
                            style: Styles.headLine4,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(20),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'First',
                      prefixIcon: Icon(Icons.flight_takeoff_rounded)),
                ),
                const Gap(10),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.flight_takeoff_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'second',
                  ),
                ),
                TextButton(
                    onPressed: dataPicker,
                    child: const Text(
                      'Select date:',
                    )),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    _selectedDate != null
                        ? '${_selectedDate!.toLocal()}'
                        : 'No date selected',
                    style: Styles.headLine3,
                  ),
                ),
                const Gap(30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Find"),
                ),
              ],
            )
          ],
        ));
  }
}


// Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           children: [
//             TextField(
//               decoration: const InputDecoration(
//                   labelText: 'Searching', suffixIcon: Icon(Icons.search)),
//               onChanged: (value) => runFilter(value),
//             ),
//             Expanded(
//                 child: foundUser.isNotEmpty
//                     ? ListView.builder(
//                         itemCount: foundUser.length,
//                         itemBuilder: (ctx, i) => Card(
//                           key: ValueKey(foundUser[i]['id']),
//                           color: Colors.amber,
//                           child: ListTile(
//                             leading: Text(foundUser[i]['id'].toString()),
//                             title: Text(foundUser[i]['name']),
//                           ),
//                         ),
//                       )
//                     : const Text('No result found'))
//           ],
//         ),
//       ),