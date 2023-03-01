import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // startServer() async {
  //   var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  //   print("Server running on IP : " +
  //       server.address.toString() +
  //       " On Port : " +
  //       server.port.toString());
  //   await for (var request in server) {
  //     request.response
  //       ..headers.contentType =
  //       new ContentType("text", "plain", charset: "utf-8")
  //       ..write('Hello, world')
  //       ..close();
  //   }
  // }


  Future audio() async {
    var uri = 'http://localhost:3000/audio';
    final response = await http.get(Uri.parse(uri), headers: {'Content-Type': 'audio/mp3'});
    var body = json.decode(response.body);
    // print(body);
    return body;

  }
  void Audio() async {
    if(playing){
      var res = await audioPlayer?.pause();
      if (res ==1){
        playing = false;
      }
    }else{
      var res = await audioPlayer?.play('http://10.0.2.2:3000/audio');
      if(res == 1){
        playing = true;
      }
    }
  }

  // bool playing = false;
  // AudioPlayer audioPlayer = AudioPlayer();
  // IconData playBtn = Icons.play_arrow;
  //
  //
  // void stopButton(){
  //   playBtn = Icons.play_arrow;
  // }
  // // AudioPlayer? audioPlayer;
  // late AudioCache audioCache;
  bool playing = false;
  IconData playbtn = Icons.pause;
  List index = ['btn1','btn2','btn3','btn4','btn5'];

  AudioPlayer? audioPlayer;
  late AudioCache audioCache;
  @override
  void initState() {
    super.initState();
    setState(() {
      audioPlayer = AudioPlayer();
      audioCache = AudioCache(fixedPlayer: audioPlayer);
    });
  }
  void playAudio(){
    audioCache.play('music.mp3');
  }
  void pauseAudio(){
    audioPlayer!.pause();
  }
  void stopAudio(){
    audioPlayer!.stop();
  }
  @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     audioPlayer = AudioPlayer();
  //     audioCache = AudioCache(fixedPlayer: audioPlayer);
  //   });
  // }
  // void playAudio(){
  //   // audioPlayer!.pause();
  //   audioCache.play('music.mp3');
  // }
  // void pauseAudio(){
  //   audioPlayer!.pause();
  // }
  // void stopAudio(){
  //   audioPlayer!.stop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: RadialGradient(colors: [  Colors.blue, Colors.white],
                  radius: 1)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 80,),
                  Text('Now Playing',style: TextStyle(fontSize: 22.5),),
                ],
              ),
              Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.all(Radius.circular(300)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.music_note,color: Colors.blue,size: 250,),
                  )),
              SizedBox(height: 10,),
              Text('Sha\'ban and it\'s benefit', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Shayk Dhikrullah Shafii', style: TextStyle(fontSize: 18),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Column(
                  children: [
                    SliderTheme(data: SliderThemeData(
                        thumbColor: Colors.white,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey
                    ), child: Slider.adaptive(value: 7, onChanged: (v){}, min: 0,max: 100,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('01.34', style: TextStyle(fontSize: 20),),
                          Text('34.00', style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    heroTag: index[0],
                    hoverColor: Colors.red,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    mini: true,
                    onPressed: (){}, child: Icon(Icons.shuffle,color: Colors.black,),),
                  FloatingActionButton(
                    heroTag: index[1],
                    mini: true,
                    onPressed: (){}, child: Icon(Icons.skip_previous_rounded,size: 26),),
                  FloatingActionButton(
                    heroTag: index[2],
                    backgroundColor: Colors.blue.withAlpha(250),
                    onPressed: (){
                      if(!playing){
                        setState(() {
                          playbtn = Icons.pause;
                          playing = true;
                          audioPlayer!.play('http://10.0.2.2:3000/audio');
                        });
                      }else{
                        setState(() {
                          playbtn = Icons.play_arrow;
                          playing = false;
                          pauseAudio();
                        });
                      }
                    }, child: Icon(playbtn,size: 26,),),
                  FloatingActionButton(
                    heroTag: index[3],
                    mini: true,
                    onPressed: (){}, child: Icon(Icons.skip_next_rounded,size: 26),),
                  FloatingActionButton(
                    heroTag: index[4],
                    hoverColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    mini: true,
                    onPressed: (){
                      stopAudio();
                      setState(() {
                        playbtn = Icons.play_arrow;
                        playing = false;
                        pauseAudio();
                      });
                    }, child: Icon(Icons.stop,color: Colors.black,),)
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}