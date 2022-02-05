

import 'package:clone/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
   Login_Page({Key? key}) : super(key: key);
final _formkey = GlobalKey<FormState>();

moveToHome(BuildContext context)
{
  if(_formkey.currentState!.validate())
    {
       Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
}
 final String color= "0xffD1EEEE";
  @override
  Widget build(BuildContext context) {
    return Material(
     child: Form(
       key: _formkey,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Image.asset("assets/images/fblogin.png",fit: BoxFit.cover,),
           SizedBox(height: 30,),
         Padding(padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
         child: Column(
           children: [
             Container(
               width: 500,
               height: 50,
               child: TextFormField(
                 decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide:  BorderSide(color: Color(int.parse("0xffC0C0C0")),width: 1.0,)
                 ),
                   hintText: "Phone number or email address",
                   hintStyle: TextStyle(
                       color: Color(int.parse("0xffAAAAAA"))
                   ),
                 ),
                 validator: (value) {
                   if(value!.isEmpty)
                     {
                       return "This field can not be empty";
                     }
                 },
               ),
             ),
            
             Container(
               width: 500,
               height: 50,
               child: TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                   borderSide:  BorderSide(color: Color(int.parse("0xffC0C0C0")),width: 1.0)),
                   hintText: "Password",
                   hintStyle: TextStyle(
                     color: Color(int.parse("0xffAAAAAA"))
                   ),
                   hoverColor: Colors.white10
                 ),
                 validator: (value)
                 {
                   if(value!.isEmpty)
                     {
                       return "This field can not be empty";
                     }
                 },
               ),
             )
           ],
         ),
         ),
        Material(
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: InkWell(
              onTap: ()=> moveToHome(context),
        child: Container(
        color: Colors.indigo,
        height: 42,
        alignment: Alignment.center,
        child: Text("Log In",style: TextStyle(
        color: Colors.white60,
        fontSize: 20,
        fontWeight: FontWeight.bold
        ),),

        ),
        ),
        )),
        SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.fromLTRB(105,0,0,0),
             child: InkWell(
               onTap: (){},
               child: Text("Forgotten Password?",style: TextStyle(
                   color: Colors.indigo,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               ),),
             ),
           ),

           SizedBox(height: 15,),


           Padding(
             padding: const EdgeInsets.fromLTRB(173,0,0,0),
             child: InkWell(
               onTap: (){},
               child: Text("Back",style: TextStyle(
                   color: Colors.indigo,
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               ),),
             ),
           ),

           SizedBox(height: 120,),

           Container(
             alignment: Alignment.center,
             color: Colors.white10,
             child: Text("--------------- OR ---------------",style: TextStyle(
               color: Colors.black54,
               fontWeight: FontWeight.bold,
               fontSize: 15
             ),),
           ),
           SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
             child: InkWell(
               onTap: ()=> Navigator.pushNamed(context, MyRoutes.signupRoute),
               child: Container(
                 width: 500,
                 height: 40,
                 color: Color(int.parse(color)),
                 alignment: Alignment.center,
                 child: Text("Create New Account",style: TextStyle(
                   color: Colors.indigo,
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ),),
               ),
             ),
           )
         ],
       ),
     ),
      );
 
  }
}
