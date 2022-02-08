


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Friends_Tab extends StatefulWidget {
  const Friends_Tab({Key? key}) : super(key: key);

  @override
  State<Friends_Tab> createState() => _Friends_TabState();
}

class _Friends_TabState extends State<Friends_Tab> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text("Friends",textScaleFactor: 1.8,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white10,
        actions: <Widget>[
      Row(
      children: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
          color: Color(int.parse("0xffEBEBEB"))
    ),
    // color: Colors.grey,
        child: IconButton(
       onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.search),
        color: Colors.black,
        iconSize: 23,

        ),
      ),
      ),
        ],
      ),
    ]
      ),

    );
  }
}
