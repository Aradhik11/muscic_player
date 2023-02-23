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


  startServer() async {
    var server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    print("Server running on IP : " +
        server.address.toString() +
        " On Port : " +
        server.port.toString());
    await for (var request in server) {
      request.response
        ..headers.contentType =
        new ContentType("text", "plain", charset: "utf-8")
        ..write('Hello, world')
        ..close();
    }
  }


  Future audio() async {
    var uri = 'http://localhost:3000/audio';
    final response = await http.get(Uri.parse(uri), headers: {'Content-Type': 'audio/mp3'});
    var body = json.decode(response.body);
    // print(body);
    return body;

  }
  void Audio() async {
    if(playing){
      var res = await audioPlayer.pause();
      if (res ==1){
        playing = false;
      }
    }else{
      var res = await audioPlayer.play('http://10.0.2.2/audio',isLocal: true);
      if(res == 1){
        playing = true;
      }
    }
  }

  bool playing = false;
  AudioPlayer audioPlayer = AudioPlayer();
  IconData playBtn = Icons.play_arrow;


  void stopButton(){
    playBtn = Icons.play_arrow;
  }
  // AudioPlayer? audioPlayer;
  late AudioCache audioCache;
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
  void initState() {
    super.initState();
    startServer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Music Playlist'),
      // ),
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  Text(''
                      'Music play list',
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ],
              ),

              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/lawal.png'),
              ),
              SizedBox(
                height: 70,
              ),

              Container(
                width: 500.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Slider(
                      value: 0, onChanged: (double value) {  },
                    ),
                    Text('00.00'),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    IconButton(onPressed: (){
                      setState(() {
                        // audioPlayer?.stop();
                        // if(playing == true){
                        //   playBtn = Icons.play_arrow;
                        // }else{
                        //   audioPlayer?.play('music.mp3');
                        //   playBtn = Icons.play_arrow;
                        // }
                        // stopAudio();
                        setState(() {
                          playBtn = Icons.play_arrow;
                          playing = false;
                          // pauseAudio();
                        });
                      });



                    }, icon: Icon(Icons.stop), iconSize: 40,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous), iconSize: 40,),
                    IconButton(onPressed: (){
                      if(!playing){
                        setState(() {
                          playBtn = Icons.pause;
                          playing = true;
                          // playAudio();
                          // audioCache.play('music.mp3');
                        });
                      }else{
                        setState(() {
                          stopButton();
                          // audioPlayer?.pause();
                          playBtn = Icons.play_arrow;
                          playing = false;
                          // pauseAudio();
                        });
                      }
                    }, icon: Icon(playBtn), iconSize: 50,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_next), iconSize: 40,),

                  ],
                ),
              ),
              Container(
                  child: IconButton(onPressed: (){
                    Audio();
                  }, icon: Icon(Icons.play_arrow)),
                )

            ],
          )//
      ),
    );
  }
}