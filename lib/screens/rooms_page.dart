import 'package:flutter/material.dart';
import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/widgets/room_main_widget.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListTile(
              minVerticalPadding: 0.1,
              leading:const Icon(Icons.arrow_back_ios,color: Colors.black,),
              title: Text(
                'Beach Resort Lux',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: getFont(28.0)),
              ),

            ),
          ),
          Expanded(
            flex: 10,
            child: roomMainWidget(context))
          ,
        ],
      )),
    );
  }
}
