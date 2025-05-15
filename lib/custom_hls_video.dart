// import 'package:flutter/material.dart';
// import 'package:m3u8_player/m3u8_player.dart';

// class CustomHlsVideo extends StatefulWidget {
//   const CustomHlsVideo({super.key});

//   @override
//   State<CustomHlsVideo> createState() => _CustomHlsVideoState();
// }

// class _CustomHlsVideoState extends State<CustomHlsVideo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           constraints: const BoxConstraints(maxWidth: 800),
//           child: M3u8PlayerWidget(
//             config: PlayerConfig(
//               url: 'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8',
//               enableProgressCallback: true,
//               progressCallbackInterval: 15,
//               onProgressUpdate: (position) {
//                 print('Posição atual: ${position.inSeconds} segundos');
//               },
//               completedPercentage: 1.0,
//               onCompleted: () {
//                 print('Video Done');
//               },
//               onFullscreenChanged: (isFullscreen) {
//                 print("Fullscreen changed: $isFullscreen");
//               },
//               theme: const PlayerTheme(
//                 primaryColor: Colors.white,
//                 progressColor: Colors.red,
//                 backgroundColor: Colors.black54,
//                 bufferColor: Colors.white24,
//                 iconSize: 24.0,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
