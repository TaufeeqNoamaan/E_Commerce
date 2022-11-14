import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   

  @override
  State<HomePage> createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void onTap (int index) {
    setState(() {
      _selectedIndex = index;
    });

   
  }
  @override
  Widget build(BuildContext context) {
   const List<Widget> _widgets = <Widget>[
      Text('PAGE 1'),
            Text('PAGE 2'),

      Text('PAGE 3'),

      Text('PAGE 4'),

    ];
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(items: const[
       BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home, color: Colors.black,)),
       BottomNavigationBarItem(label: 'Wallet', icon: Icon(Icons.wallet, color: Colors.black)),
       BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.shop, color: Colors.black)),
       BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person, color: Colors.black)),

      ],
      currentIndex: _selectedIndex,
      onTap: onTap,),
      body: Center(child: _widgets.elementAt(_selectedIndex)),
    );
  }
}