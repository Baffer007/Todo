import 'package:flutter/material.dart';

import 'add_page.dart';
import 'grid_page.dart';

// class PlusPage extends StatefulWidget {
//   const PlusPage({Key? key}) : super(key: key);
//
//   @override
//   State<PlusPage> createState() => _PlusPageState();
// }
//
// class _PlusPageState extends State<PlusPage> {
//   _onPressed(){
//     showModalBottomSheet(
//        
//
//         context: context, builder: (BuildContext context) {
//       return Container(
//       );
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton (
//          onPressed: _onPressed,
//          child:AddPage(),
//     );
//   }
// }

class PlusPage extends StatefulWidget {
  const PlusPage({Key? key}) : super(key: key);

  @override
  State<PlusPage> createState() => _PlusPageState();
}

class _PlusPageState extends State<PlusPage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
          onPressed: (){},
        child:AddPage(),
  );
  }
}
