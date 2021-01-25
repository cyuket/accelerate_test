import 'package:accelerate_health/firstPage.dart';
import 'package:accelerate_health/navbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    Text(
      'Index 3: Second Page',
    ),
    Text(
      'Index 3: Third Page',
    ),
    Text(
      'Index 3: Fouth Page',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: FABBottomAppBar(
        //centerItemText: 'A',
        color: Color(0xff371821),
        selectedColor: Color(0xff5FF9CB), //Color(0xff800000),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _onItemTapped,
        items: [
          FABBottomAppBarItem(
            icon: "assets/images/first.png",
          ),
          FABBottomAppBarItem(
            icon: "assets/images/second.png",
          ),
          FABBottomAppBarItem(
            icon: "assets/images/third.png",
          ),
          FABBottomAppBarItem(
            icon: "assets/images/fouth.png",
          ),
        ],
      ),
    );
  }
}
