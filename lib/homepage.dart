import 'package:flutter/material.dart';
import 'package:ott/vdes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 400,
                floating: false,
                pinned: true,
                // leading: Icon(Icons.broadcast_on_home,),

                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("For Nihaara"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.send_to_mobile_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  background: Image.asset(
                    "assets/3.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  child: Text(
                    "Tv Shows",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.brown.shade200,
                          ),
                          child: Center(
                            child: Text("Tv Shows"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.brown.shade200,
                          ),
                          child: Center(child: Text("Movies")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.brown.shade200,
                          ),
                          child: Center(child: Text("Categories")),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,

                    //color:Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: onet.length,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Videoplayerr()),
                              );
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(onet[index].image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Text(
                  "TrendingNow",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 200,
                  width: 350,

                  //color:Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: two.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                              ),
                              image: DecorationImage(
                                image: AssetImage(two[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Text(
                  "Continue Watching For Nihaara",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Container(
                    height: 200,
                    width: 350,

                    //color:Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: onet.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(onet[index].image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Text(
                  "Hollwood Special",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 200,
                  width: 350,

                  //color:Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: two.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                              ),
                              image: DecorationImage(
                                image: AssetImage(two[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///file1
class image1 {
  String? image;

  // String? text;

  image1(
    this.image,
  );
}

List onet = images1
    .map((e) => image1(
          e['image'],
        ))
    .toList();

var images1 = [
  {'image': 'assets/6.png'},
  {
    'image': 'assets/5.png',
  },
  {'image': 'assets/4.png'},
  {'image': 'assets/7.png'},
  {'image': 'assets/6.png'},
  {'image': 'assets/5.png'},
  {'image': 'assets/4.png'},
];

////file2
class image2 {
  String? image;

  // String? text;

  image2(
    this.image,
  );
}

List two = images2
    .map((e) => image2(
          e['image'],
        ))
    .toList();

var images2 = [
  {'image': 'assets/10.png'},
  {
    'image': 'assets/9.png',
  },
  {'image': 'assets/8.png'},
  {'image': 'assets/7.png'},
  {'image': 'assets/6.png'},
  {'image': 'assets/5.png'},
  {'image': 'assets/4.png'},
  {'image': 'assets/4.png'},
];
