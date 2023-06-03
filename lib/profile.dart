import 'package:flutter/material.dart';
class createaccount extends StatefulWidget {
  const createaccount({Key? key}) : super(key: key);

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(


        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 220,
              ),
              Icon(Icons.cancel_outlined,
                color: Colors.black,),

            ],
          ),
          Container(
            height: 400,
            width: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Ready To Watch?"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter your email to create or sign in to your account"),
                ),
                Container(
                  // width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email Id/Phone Number",
                      fillColor: Colors.black,
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black, ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 600,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: (){}, child:Text("Get Started"), ),
                  ),
                ),

              ],
            ),
          )



        ],
      ),

    );
  }
}
