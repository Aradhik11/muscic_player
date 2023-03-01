import 'package:flutter/material.dart';
import 'package:music_player/next.dart';
import 'navBar.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  late Future futureFiles;
  // final storage = FirebaseStorage.instance;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   futureFiles = storage.ref('/quran').listAll();
  // }

  List audioTitles = ['HALQAH SERIES', 'FIQH FORUM', 'AL-FATWA', 'TASKIYATU-NAFS', 'FRIDAY SERMON', 'HADEETHUL-KHAMIS', 'MADRASATUNN-RAMADANIYYAH', 'AGBOYE ISLAM', 'CIO', 'CAMPS', 'FRIDAY SERMON', 'HAJJ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text('FOLDER 002'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 900,
              child: ListView.builder(itemCount: 12, itemBuilder: (_,index){
                return Column(
                  children: [
                    GestureDetector(onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    }, child: ListTile(title: Text('Audio Name',),subtitle: Text('duration'),)),
                    Divider()
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
