import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'MainPage.dart';
import 'Account.dart';
import 'Library.dart';
import 'Search.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget{
  Widget build (BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int index = 0;
  Widget build (BuildContext){
    return Scaffold(
      body: show(index),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
          currentIndex: index,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.white30,
            selectedItemColor: Colors.white,
            onTap: ((int x){
              setState(() {
                index = x;
                    show(index);
              });
            }),
            items: [
                  new BottomNavigationBarItem(icon: Icon(Icons.home),
                  title: Text('Home'),
                  ),
                  new BottomNavigationBarItem(icon: Icon(Icons.explore),
                  title: Text('Search'),
                  ),
                 new BottomNavigationBarItem(icon: Icon(Icons.queue_music),
                  title: Text('Library'),
                  ),
                 new BottomNavigationBarItem(icon: Icon(Icons.folder_special),
                 title: Text('Playlists'),
                  ),
                  new BottomNavigationBarItem(icon: Icon(Icons.account_circle),
                  title: Text('Account'),
                  ),
          ]),
      ),
    );
  }
}

Widget show(int index){
  switch(index){
    case 0: return MainPage();
    break;
    case 1: return Search();
    break;
    case 2: return Library();
    break;
    case 3: return Account();
    break;
  }
}





