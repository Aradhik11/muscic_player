import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Aradhik Almuhadith'),
              accountEmail: Text('aradhik1040@yahoo.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                 child: Image.network('https://i.ytimg.com/vi/uveT7nvhbKY/maxresdefault.jpg',
                 width: 80,
                   height: 80,
                   fit: BoxFit.cover,
                 )
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage('https://tasbihdigital.com/wp-content/uploads/2021/11/Islam-Desktop-Wallpapers-1536x864.jpg',
                ),
                fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourite'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: (){
              Navigator.pop(context);
            },
          )

        ],
      ),
    );
  }
}
