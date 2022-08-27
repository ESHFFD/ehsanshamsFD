import 'package:booking_app/screens/bottom_bar.dart';
import 'package:booking_app/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class VerifyPage extends StatelessWidget {
  VerifyPage({Key? key, required this.phoneCode}) : super(key: key);
  final String phoneCode;
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(top: 0),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/verify.jpeg'))),
              ),
              Text(
                'Verification',
                style: Styles.headLine1,
                textAlign: TextAlign.center,
              ),
              const Gap(60),
              Text(
                'the verification code has been send to: \n+98 $phoneCode',
                textAlign: TextAlign.center,
              ),
              const Gap(50),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                validator: (s) {
                  if (s != '2222') {
                    return null;
                  }
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BottomBar())),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
