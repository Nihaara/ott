import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ott/color.dart';
import 'package:ott/login.dart';
import 'package:ott/navi.dart';

import 'homepage.dart';
class Sigin extends StatefulWidget {
  const Sigin({Key? key}) : super(key: key);

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomePage()),
            );
          },

            child: Icon(Icons.arrow_back_ios_new),


        ),
        title: Text("Flix&Chill",style: TextStyle(
          color: Colors.red,
        ),),

      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Binge Watch And Enjoy ",style: TextStyle(
              fontSize: 60,
            ),),
          ),


          Column(
            children: [
              const SizedBox(
                height: 50,

              ),


              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  inputFormatters:<TextInputFormatter> [
                    // FilteringTextInputFormatter.,
                    LengthLimitingTextInputFormatter(10)
                  ],
                  validator :(val)
                  {
                    if(val == null || val.isEmpty)
                    {
                      return"Enter Username ";
                    }
                  },
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.person) ,
                    labelText: "User Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ) ,
                  //d
                  // Icon(Icons.person),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:  TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters:<TextInputFormatter> [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10)
                  ],
                  validator :(val)
                  {
                    if(val == null || val.isEmpty)
                    {
                      return"Please Enter Your Password ";
                    }
                  },
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.person),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ) ,
                  //d
                  // Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // ElevatedButton(onPressed: (){
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Dash()),
              //   );
              //
              // }, child: Text("Login")),


              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Navi()),
                  );

                },

                  child: Text("Sign In",style: TextStyle(
                    color: Colors.white,
                  ),)
                  ,
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(),

                  ),),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
