import 'package:flutter/material.dart';
import 'package:music_player/mainScreen.dart';
import 'navBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text('MUSIC PLAYER'),
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(Icons.search),
            )
          ],
          floating: true,
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 600,
                  child: ListView.builder(itemCount: 7, itemBuilder: (context,index){
                    return TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Main()));
                        },
                        child: const Card(
                          child: ListTile(
                            title: Text('FOLDER NAME'),
                            subtitle: Text('by who'),
                          ),
                        ));
                  }),
                )

              ],
            ),
          ),
        ),
      ]),
    );
  }
}


