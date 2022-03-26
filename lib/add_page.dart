
import 'dart:ui';

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Stack(
            children: [


              Image.asset('assets/images/image_rectangle1.png',width: double.infinity,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset('assets/images/ellipse.png',height: 120,
                width: 150),
                Image.asset('assets/images/ellipse_2.png',height: 93,width: 93),


              ],),

              const Padding(
                padding: EdgeInsets.only(left: 20,top: 50),
                child: Text(
                  'Hello Brenda!\n'
                      'Today you have 9 tasks',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 340,top: 66),
                child: Material(
                  elevation:2,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(

                    child: const CircleAvatar(

                      backgroundImage: AssetImage('assets/images/image_002.png')
                    ),


                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(

                        color: Colors.white,

                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
              ),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:60 ),
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
