import 'package:flutter/material.dart';
import 'package:music_player/mainScreen.dart';
import 'mongodb.dart';
import 'next.dart';
import 'mainScreen.dart';


Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MaterialApp(
    home: Main(),
  ));
}

// child: Column(
//   children: [
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//               playAudio();
//             }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//               pauseAudio();
//             }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//               stopAudio();
//             }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//     SizedBox(height: 20.0,),
//     Container(
//       color: Colors.grey,
//       child: Row(
//         children: [
//           IconButton(onPressed: (){
//             playAudio();
//           }, icon: Icon(Icons.play_arrow)),
//
//           IconButton(onPressed: (){
//             pauseAudio();
//           }, icon: Icon(Icons.pause)),
//
//           IconButton(onPressed: (){
//             stopAudio();
//           }, icon: Icon(Icons.stop)),
//         ],
//       ),
//     ),
//   ],
// ),

// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }




