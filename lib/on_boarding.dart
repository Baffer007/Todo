import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image_on_boarding.png',
              height: 200,
              width: 180,
            ),
            const Text(
              "Reminders made simple",
              style: TextStyle(
                  color: Color(0xFF554E8F),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(44.0, 37.0, 46.0, 43.0),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 15.0),
                )),
                height: 56,
                width: 258,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF5DE61A),
                        Color(0xFF39A801),
                      ]),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
