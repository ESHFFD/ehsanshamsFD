import 'package:booking_app/screens/auth_screen/phone_number_screen.dart';
import 'package:booking_app/screens/bottom_bar.dart';
import 'package:booking_app/widgets/phonne_screen_illus.dart';
import 'package:flutter/material.dart';
import './utiles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: primary),
        home: PhoneNumberPage());
  }
}
