import 'dart:ui';

import 'package:flutter/material.dart';

import 'add_page.dart';
import 'grid_page.dart';
import 'plus_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dateTime = DateTime(2022);


  int currentTab = 0;
  final List<bool> _selections = List.generate(6, (_) => false);


  final List<Widget> screens = [
    AddPage(),
    GridPage(),
  ];


  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = AddPage();

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Color(0xFFE521A4),

        child: Container(
          width: 53,
          height: 53,
          child: Icon(Icons.add, size: 40,),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Color(0xFFF857C3), Color(0xFFE0139C)])
          ),
        ),


        onPressed: ()  async{

    showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(150, 30)),

            ),

            builder: (BuildContext context) {
              return PlusAdd();
            }, context: context,

          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = AddPage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/home.png',
                        height: 22,
                        width: 24.22,
                        color: currentTab == 0
                            ? Color(0xFF567BD2)
                            : Color(0xFFBEBEBE)),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: currentTab == 0
                              ? Color(0xFF567BD2)
                              : Color(0xFFBEBEBE)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 100,
                onPressed: () {
                  setState(() {
                    currentScreen = GridPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/grid.png',
                        height: 22,
                        width: 24.22,
                        color: currentTab == 1
                            ? Color(0xFF567BD2)
                            : Color(0xFFBEBEBE)),
                    Text(
                      'Task',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: currentTab == 1
                              ? Color(0xFF567BD2)
                              : Color(0xFFBEBEBE)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),


    );
  }
  Widget PlusAdd(){
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        Positioned(

          child: Column(

            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },

                child: Container(
                  width: 53,
                  height: 53,
                  child: const Icon(
                    Icons.clear, size: 40, color: Colors.white,),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFF857C3),
                        Color(0xFFE0139C),

                      ],


                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 21.5, right: 20.5),
                child: Column(

                  children: [

                    SizedBox(height: 17.12,),
                    Text('Add new task', style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF404040),),),
                    TextFormField(

                      cursorHeight: 32,
                      cursorWidth: 2,

                      maxLines: 2,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Divider(
                      thickness: 2,

                      color: Color(0xFFCFCFCF),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ToggleButtons(

                        borderRadius: BorderRadius.all(
                            Radius.circular(20)),
                        borderColor: Colors.white,
                        focusColor: Colors.white,
                        disabledBorderColor: Colors.white,
                        disabledColor: Colors.white,
                        highlightColor: Colors.white,
                        hoverColor: Colors.white,
                        splashColor: Colors.black45,
                        selectedBorderColor: Colors.black45,
                        selectedColor: Colors.white,
                        fillColor: Color(0xFF1ED102),
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    20)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.circle, size: 10.0,
                                  color: Color(0xFFFFD506),),
                                Text('Personal', style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),)

                              ],
                            ),

                          ),
                          Row(
                            children: const [
                              Icon(Icons.circle, size: 10.0,
                                color: Color(0xFF1ED102),),
                              Text('Work', style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),)

                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.circle, size: 10.0,
                                color: Color(0xFFD10263),),
                              Text('Meeting', style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),)

                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.circle, size: 10.0,
                                color: Color(0xFFEC6C0B),),
                              Text('Shopping', style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),)

                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.circle, size: 10.0,
                                color: Color(0xFF09ACCE),),
                              Text('Party', style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),)

                            ],
                          ),

                          Row(


                            children: const [
                              Icon(Icons.circle, size: 10.0,
                                color: Color(0xFFBF0080),),
                              Text('Study', style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),)

                            ],
                          ),
                        ],
                        isSelected: _selections,
                        onPressed: (int index) {
                          setState(() {
                            _selections[index] = !_selections[index];
                          });
                        },
                      ),
                    ),
                    Divider(
                      thickness: 2,

                      color: Color(0xFFCFCFCF),
                    ),

                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(1),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.white),
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          lastDate: DateTime(2300),
                          initialDate: dateTime,
                          firstDate: DateTime(1900),);
                        if (newDate != null ){
                          setState(() {
                            dateTime = newDate;
                          });
                        };
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween,
                        children: const [
                          Text(
                            'Choose date',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                                color: Color(0xFF404040)),
                          ),

                          Icon(Icons.expand_more,
                            color: Color(0xFF404040),),
                        ],
                      ),
                    ),
                    Text("${dateTime.day}-${dateTime.month}-${dateTime.year}",
                      style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),

            ],
          ),),
      ],
    );
  }

}



