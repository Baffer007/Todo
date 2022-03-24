

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/image_rectangle1.png',width: double.infinity,),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 50),
                child: Text(
                  'Hello Brenda!\n'
                      'Today you have 9 tasks',style: TextStyle(color: Colors.white,fontSize: 18.0),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(50)
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 256,),
              Image.asset('assets/images/clip_board.png',height: 165,width: 120),
              const SizedBox(height: 70),
              const Text('No tasks',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
            ],
          ),

        ],
      ),

    );
  }
}
