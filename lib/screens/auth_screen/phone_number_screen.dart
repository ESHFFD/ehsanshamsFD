import 'package:booking_app/screens/auth_screen/verify_phone_number.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/login.jpeg'))),
                height: 300,
                width: 300,
              ),
              TextField(
                maxLength: 10,
                autofocus: true,
                controller: _controller,
                decoration: const InputDecoration(
                    prefix: Text('+98  '),
                    hintText: 'Phone Number',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
              ),
              const Gap(10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyPage(
                                  phoneCode: _controller.text,
                                )));
                  },
                  child: const Text('Send code')),
              const Spacer(),
            ],
          ),
        ));
  }
}
