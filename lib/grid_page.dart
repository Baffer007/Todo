import 'dart:ui';

import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key,}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              Image.asset(
                'assets/images/grid/rectangle_2.png',
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/ellipse.png',
                      height: 120, width: 150),
                  Image.asset('assets/images/ellipse_2.png',
                      height: 93, width: 93),
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: Text(
                  'Hello Brenda!\n'
                  'Today you have 9 tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal),
                ),
              ),

              // Container(
              //   height: 40,
              //   width: 40,
              //   decoration: BoxDecoration(
              //
              //       borderRadius: BorderRadius.circular(50)
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 340, top: 66),
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    child: const CircleAvatar(

                        backgroundImage: AssetImage('assets/images/image_002.png')
                    ),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/grid/rectangle_3.png',
                        width: 360,
                        height: 120,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 21),
                        child: Text(
                          'Today Reminder',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 49),
                        child: Text(
                          'Meeting with client',
                          style: TextStyle(
                              color: Color(0xFFF3F3F3),
                              fontWeight: FontWeight.normal,
                              fontSize: 11.0),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 68),
                        child: Text(
                          '13.00 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 11.0,
                              color: Color(0xFFF3F3F3)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17, left: 255),
                        child: Image.asset(
                          'assets/images/grid/bell.png',
                          width: 74,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, top: 13),
            child: Text(
              'Projects',
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF8B87B3)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
              ),
              child: GridView.count(
                crossAxisSpacing: 19,
                mainAxisSpacing: 19,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/user.png',
                                height: 33.82,
                                width: 28.22,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFFFFEE9B),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Personal',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '24 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/briefcase.png',
                                height: 25.86,
                                width: 28.61,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFFB5FF9B),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Work',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '44 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/presentation.png',
                                height: 35.46,
                                width: 29.32,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFFFF9BCD),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Meeting',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '45 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/shopping_basket.png',
                                height: 25.38,
                                width: 30.07,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFFFFD09B),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Shopping',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '54 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/confetti.png',
                                height: 30.05,
                                width: 30.05,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFF9BFFF8),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Party',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '24 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    shadowColor: const Color(0xFFBBBBBB),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Expanded(
                              child: Image.asset(
                                'assets/images/grid/molecule.png',
                                height: 28.11,
                                width: 28.11,
                              ),
                            ),
                            radius: 33,
                            backgroundColor: const Color(0xFFF59BFF),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 20),
                            child: Text(
                              'Study',
                              style: TextStyle(
                                  color: Color(0xFF686868),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17.0),
                            ),
                          ),
                          const Text(
                            '24 Task',
                            style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
