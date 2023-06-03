// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// class VideoPage extends StatefulWidget {
//   const VideoPage({Key? key}) : super(key: key);
//
//   @override
//   State<VideoPage> createState() => _VideoPageState();
// }
//
// class _VideoPageState extends State<VideoPage> {
//   late FlickManager flickManager;
//
//   // late VideoplerController videoplerController;
//
//   get videoPlayerController => null;
//
//
//   @override
//   void initState() {
//     // super.initstate();
//     flickManager = FlickManager(
//       videoPlayerController:
//       videoPlayerController.network("https://youtu.be/HxtLlByaYTc"),
//     );
//   }
//
//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 2,
//         child: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return [
//               SliverAppBar(
//                 backgroundColor: Colors.black,
//                 expandedHeight: 400,
//                 floating: false,
//                 pinned: true,
//                 // leading: Icon(Icons.broadcast_on_home,),
//
//                 flexibleSpace: FlexibleSpaceBar(
//                   centerTitle: true,
//
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text("For Nihaara"),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 98.0),
//                         child: Icon(
//                           Icons.send_to_mobile_outlined,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Icon(
//                         Icons.search,
//                         color: Colors.white,
//                       ),
//
//
//                     ],
//                   ),
//
//                 ),
//               ),
//             ];
//           },
//           body: Container(),
//
//
//         ),
//
//         // body: Row(
//         //   mainAxisAlignment: MainAxisAlignment.end,
//         //   children: [
//         //     ElevatedButton(
//         //       style: ElevatedButton.styleFrom(
//         //         primary: Colors.white, // background
//         //         onPrimary: Colors.black, // foreground
//         //       ),
//         //       onPressed: () {},
//         //       child: Icon(Icons.close),
//         //     ),
//         //
//         //
//         //   ],
//         //
//         // ),
//
//
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class SamplePlayer extends StatefulWidget {
  // SamplePlayer({required Key key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      Container(
      height: 400,
      // color: Colors.cyanAccent,

      child: FlickVideoPlayer(
          flickManager: flickManager
      ),
    ),





        


    ]
    ,
    );
  }
}