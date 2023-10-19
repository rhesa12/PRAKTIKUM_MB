import 'package:flutter/material.dart';
import 'package:posttest5_105_rhesa_simbolon/pages/about_me.dart';
import 'package:posttest5_105_rhesa_simbolon/pages/home_page.dart';
import 'package:posttest5_105_rhesa_simbolon/pages/shop_page.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  int _index =0;
  final List<Widget> Pages =[
    HomePage(),
    ShopPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _index = index;
    });
  }
  @override
  void initState(){
    super.initState();
    _index = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              currentAccountPicture: Container(
                width: 500,
                height: 500,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:  NetworkImage('https://avatars.githubusercontent.com/rhesa12'),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              accountName: Text(
                'Rhesa Binsar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ), 
              accountEmail: Text(
                'Jakarhesa@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(
                Icons.search,
                size: 30,
              ),
              title: Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Fish Shop',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
       body: Center(
        child: Pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About Me'),
        ],
        onTap: (index){
          _onItemTapped(index);
        },
      ),
    );
  }
}