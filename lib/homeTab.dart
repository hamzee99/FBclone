import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home_Tab extends StatelessWidget {
  const Home_Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(int.parse("0xffF2F2F2"))),
                      borderRadius: BorderRadius.zero
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,height: 10,),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/me.JPG"),
                        radius: 22,
                      ),
                      SizedBox(width: 20,),
                      Text("What's on your mind ?",style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15
                      ),),
                    ],
                  ),
                )
            ),

            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: 60,
                  color: Colors.white10,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.video_call),
                    color: Colors.red,
                    iconSize: 30,
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: Text("Live",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),
                ),

                SizedBox(width: 70,),

                Container(
                  height: 50,
                  width: 40,
                  padding: const EdgeInsets.only(right: 50),
                  color: Colors.white10,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.photo),
                    color: Colors.green,
                    iconSize: 30,
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: Text("Photo",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),
                ),
                SizedBox(width: 55,),

                Container(
                  height: 50,
                  width: 40,
                  padding: const EdgeInsets.only(right: 50),
                  color: Colors.white10,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.video_call_outlined),
                    color: Colors.purple,
                    iconSize: 30,
                  ),
                ),
                InkWell(
                  child: Text("Room",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),
                ),
              ],

            ),
            Container(
              height: 7,
              width: 400,
              color: Color(int.parse("0xffD6D6D6")),
            ),
            SizedBox(height: 10,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: (){
                        print("Tapped on story");
                      },
                      child: Container(
                        height: 155,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.indigoAccent,
                            image: DecorationImage(
                              image: AssetImage("assets/images/me.JPG"),
                              fit: BoxFit.fitHeight,
                            )
                        ),
                        child: IconButton(
                          padding: EdgeInsets.only(top: 70),
                          onPressed: (){},
                          icon: Icon(Icons.add_a_photo),
                          iconSize: 30,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 155,
                    child: Padding(
                      padding:  EdgeInsets.fromLTRB(5,135,0,0),
                      child: Text("Hassam Khaliq",style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigoAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/hassamk.JPG"),
                          fit: BoxFit.fitHeight,
                        )
                    ),

                  ),

                  SizedBox(width: 10,),

                  Container(
                    width: 100,
                    height: 155,
                    child: Padding(
                      padding:  EdgeInsets.fromLTRB(5,135,0,0),
                      child: Text("Fasih Afzal",style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigoAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/fasih.JPG"),
                          fit: BoxFit.fitHeight,
                        )
                    ),
                  ),

                  SizedBox(width: 10,),

                  Container(
                    width: 100,
                    height: 155,
                    child: Padding(
                      padding:  EdgeInsets.fromLTRB(5,135,0,0),
                      child: Text("Afaq Ahmed",style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigoAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/afaq.png"),
                          fit: BoxFit.fitHeight,
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 7,
              width: 400,
              color: Color(int.parse("0xffD6D6D6")),
            ),
            SizedBox(height: 10,),

            Container(
                height: 50,
                width: 370,
                color: Colors.white10,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/hassamk.JPG"),
                      radius: 18,
                    ),
                    SizedBox(width: 10,),
                    Text("Hassam Khaliq",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.check_mark_circled_solid),
                      color: Color(int.parse("0xff4981CE")),
                      iconSize: 19,
                    ),
                    SizedBox(width: 72,),

                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_horiz),
                      color: Color(int.parse("0xff555555")),
                      iconSize: 25,
                    ),

                    IconButton(
                      onPressed: (){},
                      icon: FaIcon(FontAwesomeIcons.times),
                      color: Color(int.parse("0xff555555")),
                      iconSize: 20,
                    ),


                  ],
                )
            ),
            SizedBox(height: 10,),

            Container(
              height: 220,
              width: 400,
              color: Colors.white10,
              child: Image(
                image: AssetImage("assets/images/wallpaper.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 45,
              width: 400,
              color: Colors.white10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.hand_thumbsup),
                      iconSize: 23,
                      color: Color(int.parse("0xff7F7F7F")),
                    ),
                  ),

                  Text("Like",style: TextStyle(
                      color: Color(int.parse("0xff7F7F7F")),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 30,),

                  IconButton(
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.comment),
                    iconSize: 23,
                    color: Color(int.parse("0xff7F7F7F")),
                  ),
                  Text("Comment",style: TextStyle(
                      color: Color(int.parse("0xff7F7F7F")),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 30,),

                  IconButton(
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.facebookMessenger),
                    iconSize: 23,
                    color: Color(int.parse("0xff7F7F7F")),
                  ),
                  Text("Send",style: TextStyle(
                      color: Color(int.parse("0xff7F7F7F")),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
