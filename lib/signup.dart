



import 'package:clone/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
   Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
final _formkey= GlobalKey<FormState>();

moveToLogin(BuildContext context) {
  if(_formkey.currentState!.validate())
    {
       Navigator.pushNamed(context, MyRoutes.loginRoute);
    }
}

DateTime selectedDate=DateTime.now();

_SelectDate(BuildContext context) async
{
  final DateTime? selected= await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(1970),
    lastDate: DateTime(2023),
  );
  if(selected!=null && selected!=selectedDate)
    {
     setState(() {
       selectedDate=selected;
     });
    }
}

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formkey,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 80, 0),
              child: Text("Create an account",style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Text("It's free and always will be",style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
            ),

            SizedBox(height: 45,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                    width: 115,
                    height: 50,

                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey,width: 1)
                        ),
                      //  new TextField(keyboardType: TextInputType.multiline,maxLines: 2,),
                        hintText: "Enter First Name",
                      //  labelText: "First Name",
                        hintStyle: TextStyle(
                         color: Colors.grey,
                         fontSize: 12
                        )

                      ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "First Name field can not be empty";
                          }
                        }
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                Container(
                  width: 115,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,width: 1
                        ),
                      ),
                      hintText: "Enter Last Name",
                     // labelText: "Last Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      )
                    ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Last Name field can not be empty";
                        }
                      }
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 270,
              height: 51,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,width: 1
                    ),
                  ),
                  hintText: "Enter Email",
             //     labelText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  )
                ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email field can not be empty";
                    }
                  }
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: 270,
              height: 51,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    hintText: "Enter Password",
                 //   labelText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    )
                ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password field can not be empty";
                    }
                  }
              ),
            ),
            SizedBox(height: 20,),

            Container(
              width: 270,
              height: 51,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    hintText: "Re-Enter Password",

                   // labelText: "Re-Enter Password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    )
                ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password field can not be empty";
                      }
                    }
              ),
            ),
            SizedBox(height: 25,),

            Text("Choose Birth Date",style: TextStyle(
              color: Colors.indigo,
              fontSize: 16,
              //fontWeight: FontWeight.bold
            ),),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                _SelectDate(context);

              },

              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: Colors.indigo,
                child: Text("Choose Date",style: TextStyle(
                  color: Colors.white,
                  fontSize: 13
                ),),

              ),
            ),
             SizedBox(height: 5,),

             Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",style: TextStyle(
               color: Colors.indigoAccent
             ),),

            SizedBox(height: 72,),

            InkWell(
              onTap: ()=> moveToLogin(context),
              child: Container(
                width: 170,
                height: 50,
                alignment: Alignment.center,
                color: Colors.indigo,
                child: Text("Sign Up",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
