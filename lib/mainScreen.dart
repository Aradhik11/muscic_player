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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      // body: FutureBuilder(
      //   future: futureFiles,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       final quran = snapshot.data!.items;
      //
      //       return ListView.builder(
      //           itemCount: quran.length,
      //           itemBuilder: (context, index) {
      //             final file = quran[index];
      //
      //             return ListTile(
      //               title: Text(file.name),
      //               trailing: IconButton(
      //                 onPressed: () {},
      //                 icon: Icon(Icons.download),
      //               ),
      //             );
      //           });
      //     } else if (snapshot.hasError) {
      //       return const Text('Error Occured');
      //     } else {
      //       return CircularProgressIndicator();
      //     }
      //   },
      // ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text('MUSIC PLAYER'),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(Icons.search),
            )
          ],
          floating: true,
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Card(
                        child: ListTile(
                          title: Text('Lates audio on playList'),
                          subtitle: Text('by shiek shaffi'),
                        ),
                      )),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text('Lates audio on playList'),
                        subtitle: Text('by shiek shaffi'),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
