import 'package:flutter/material.dart';
import 'package:flutter_demo/my.dart';

import 'empty.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _switchCurrentIndex(index) {
      setState(() {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        _currentIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Colors.blue;
    const Color unselectedColor = Colors.yellow;
    const double selectedFontSize = 18.0;
    const double unselectedFontSize = 14.0;
    
    final my = new My();
    final em = Empty();
    var vc = [em, my];
    return Scaffold(
      body: Container(
        child: vc[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: selectedFontSize,
            unselectedFontSize: unselectedFontSize,
            selectedItemColor: selectedColor,
            unselectedItemColor: unselectedColor,
            currentIndex: _currentIndex,
            onTap: (int index) {
                    _switchCurrentIndex(index);
                  },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit),
                title: Text('AC'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                title: Text('Alarm'),
              ),
            ],
          ),
    );
  }
}
