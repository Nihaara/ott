import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott/homepage.dart';
import 'package:ott/login.dart';
import 'package:ott/videoplayer.dart';

import 'color.dart';
class Videoplayerr extends StatefulWidget {
  const Videoplayerr({Key? key}) : super(key: key);

  @override
  State<Videoplayerr> createState() => _VideoplayerrState();
}

class _VideoplayerrState extends State<Videoplayerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainpage()),
                  );
                },


            child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)
        ),

        title: Text("Natures Beauty",style:GoogleFonts.merriweather(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 20) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 450,
                width:  double.infinity,
                // color: Colors.green,
                child: SamplePlayer()),
            Text("Description",
              style: GoogleFonts.merriweather(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
            Column(
              children: [
                Container(
                  width:  double.infinity,
                  child:  Text(
                    'Butterflies are a large group of insects, belonging to the order “Lepidoptera”, which means “scaly wing”. They are characterized by their large, often colorful wings and by their proboscis, which they use to suck flower nectar.',
                    style:GoogleFonts.merriweather(color: Colors.black,fontWeight:FontWeight.normal,),
                    maxLines: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:  double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(onPressed: (){  },
                      child: Text("Play",
                        style: GoogleFonts.merriweather(
                            color: Colors.black,fontWeight: FontWeight.bold
                            ,fontSize: 20),

                      ),
                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(),

                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:  double.infinity,
                    color: Colors.grey,
                    child: ElevatedButton(onPressed: (){  },
                      child: Text("Download",
                        style: GoogleFonts.merriweather(
                          color: Colors.black,fontWeight: FontWeight.bold
                            ,fontSize: 20),
                      ),
                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(),

                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: Text("Cast & Crew",
                          style:  GoogleFonts.merriweather(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  // width: 350,

                  //color:Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: onet.length,
                      itemBuilder: (BuildContext context, index)
                      {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 80,
                            width: 90,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(onet[index].image),
                            ),

                          ),
                        );
                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: Text("Video Footage",
                          style: GoogleFonts.merriweather(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0,left: 8),
                  child: Container(
                    height: 200,
                    // width: 350,

                    //color:Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:onet.length,
                        itemBuilder: (BuildContext context, index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color:Colors.black54, ),
                                image: DecorationImage(
                                  image: AssetImage(onet[index].image),
                                  fit: BoxFit.fill,

                                ),
                              ),

                            ),
                          );
                        }
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
