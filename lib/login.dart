import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ott/color.dart';
import 'package:ott/profilepage.dart';
import 'package:ott/signin.dart';
import 'package:page_view_indicator_ns/page_view_indicator_ns.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  final _key =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final pages = List.generate(
    //     6,
    //     (index) => Container(
    //
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(16),
    //             color: Colors.grey.shade300,
    //           ),
    //           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    //           child: Container(
    //             height: 280,
    //
    //             color: Colors.grey,
    //             child: Column(
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //                     Text(
    //                       "Netflix",
    //                       style: GoogleFonts.lato(color: Colors.red,fontSize: 25,fontWeight:FontWeight.w900
    //                       ),
    //                     ),
    //                     TextButton(
    //                       style: TextButton.styleFrom(
    //                         textStyle: const TextStyle(fontSize: 15),
    //                       ),
    //                       onPressed: () {},
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 10.0),
    //                         child: Text(
    //                           'Privacy',
    //                           style: GoogleFonts.lato(color: Colors.white),
    //                         ),
    //                       ),
    //                     ),
    //                     TextButton(
    //                       style: TextButton.styleFrom(
    //                         textStyle: const TextStyle(fontSize: 15),
    //                       ),
    //                       onPressed: () {},
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 10.0),
    //                         child: Text(
    //                           'Help',
    //                           style: GoogleFonts.lato(color: Colors.white),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //
    //                 Container(
    //                   height: 50,
    //                   width: 30,
    //                   child: ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: Logone.length,
    //                       itemBuilder: (BuildContext context, index)
    //                       {
    //                         return Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Column(
    //                             children: [
    //                               Container(
    //
    //                                 height: 50,
    //
    //                                 decoration: BoxDecoration(
    //                                   //border: Border.all(color: Colors.blueAccent),
    //                                   shape: BoxShape.circle,
    //                                   image:DecorationImage(
    //                                     image:AssetImage(Logone[index].image),
    //                                     fit: BoxFit.fill,
    //                                   ),
    //                                 ),
    //                               ),
    //
    //                             ],
    //                           ),
    //                         );
    //
    //
    //                       }
    //
    //
    //                   ),
    //                 ),
    //
    //               ],
    //             ),
    //           ),
    //         ));
    return Scaffold(
      backgroundColor: Colors.black,
      body:

      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                height: 50,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Flix&Chill",
                        style: GoogleFonts.lato(color: Colors.red,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Privacy',
                              style: GoogleFonts.lato(color: Colors.white),
                            ),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(),
                              onPressed: () {},
                              child: Text(
                                "Help",
                                style: TextStyle(
                                  color: Colors.white,

                                  fontSize: 20,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height-140,


                color: Colors.black,
                child: PageView.builder(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: controller,
                  itemCount: Logone.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 180,
                        // width: 100,



                        color: Colors.black,
                        child: Image.asset(
                          Logone[index].image,
                          fit: BoxFit.fill
                          ,

                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 5,
                    effect: const JumpingDotEffect(
                      dotHeight: 8,
                      dotWidth: 10,
                      jumpScale: .7,
                      // verticalOffset: 15,
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.red.shade900,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sigin()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Sig In',
                        style: GoogleFonts.merriweather(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Ottlogin extends StatefulWidget {
//   const Ottlogin({Key? key}) : super(key: key);
//
//   @override
//   State<Ottlogin> createState() => _OttloginState();
// }
//
// class _OttloginState extends State<Ottlogin> {
//   PageController controller=PageController();
//   final pageIndexNotifier = ValueNotifier<int>(0);
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//
//         children: [
//
//
//           Row(
//             children: [
//               Text(
//                 'Netflix ',
//                 style: GoogleFonts.lato(color: Colors.white),
//
//               ),
//               // Text("Netflix",style: as,),
//               TextButton(  style: TextButton.styleFrom(
//                 textStyle: const TextStyle(fontSize: 20),
//               ),
//
//                 onPressed: (){},
//                 child: Padding(
//                   padding: const EdgeInsets.only(left
//                       : 150.0),
//                   child:  Text(
//                     'Privacy',
//                     style: GoogleFonts.lato(color: Colors.white),),
//                 ),
//               ),
//               TextButton(  style: TextButton.styleFrom(
//
//               ),
//                   onPressed: (){},
//                   child: Text("Help",style: TextStyle(
//                     color: Colors.white,fontWeight: FontWeight.normal,
//                   ),))
//             ],
//
//           ),
//
//           // PageView.builder(
//           //   children:<Widget>[
//           //     Container(
//           //
//           //     )
//           //   ]
//           //     itemBuilder: itemBuilder),
//
//
//           Stack(
//             children: [
//               CarouselSlider.builder(
//                   options: CarouselOptions(
//                     height: 750,
//
//                     aspectRatio: 16/9,
//                     viewportFraction: 1,
//                     initialPage: 0,
//                     enableInfiniteScroll: true,
//                     reverse: false,
//                     autoPlay: false,
//                     autoPlayInterval: Duration(seconds: 3),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.linearToEaseOut,
//                     enlargeCenterPage: true,
//                     enlargeFactor: 2,
//                     //onPageChanged: callbackFunction,
//                     scrollDirection: Axis.horizontal,
//                   ),
//
//                   itemCount:one.length,
//                   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
//                   {
//                     return GestureDetector(
//                       onTap: ()
//                       {
//
//                       },
//                       child: Container(
//                         // height: 80,
//                         // width: 550,
//
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           color: Colors.red,
//
//
//                           image: DecorationImage(
//                             image: AssetImage(one[itemIndex].image),
//                             fit: BoxFit.cover,
//                           ),
//
//
//                         ),
//
//
//
//
//                       ),
//                     );
//
//                   }
//               ),
//
//               // Positioned
//               //   (child: Text("ggggg",
//               //   textAlign: TextAlign.end,),
//               //
//               //
//               // ),
//             ],
//           ),
//           DotsIndicator(
//
//
//             dotsCount:one.length,
//             position: 0,
//             decorator: DotsDecorator(
//               color: Colors.white, // Inactive color
//               activeColor: Colors.redAccent,
//             ),
//           ),
//
//         ],
//
//       ),
//
//     );
//
//
//   }
//
//
// }
//
class Growable extends StatefulWidget {
  const Growable({Key? key}) : super(key: key);

  @override
  State<Growable> createState() => _GrowableState();
}

class _GrowableState extends State<Growable> {
  List<L> kl = [];
  TextEditingController ctrll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var ctrl;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          TextFormField(
            controller: ctrll,
            decoration: InputDecoration(
              label: Text(
                "Username",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 170,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  kl.add(L(id: ctrll.text));
                });
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: kl.length,
                itemBuilder: (BuildContext context, index) {
                  return Text(kl[index].id);
                }),
          ),
        ],
      ),
    );
  }
}

class L {
  String id;

  L({
    required this.id,
  });
}
