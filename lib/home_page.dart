import 'package:flutter/material.dart';
import 'package:shose_app/bottom_nav-bar.dart';
import 'package:shose_app/cart_page.dart';
import 'package:shose_app/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void navigateBototomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _Page = [
    const ShoPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBototomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                icon: const Padding(
                  padding:  EdgeInsets.only(left: 12.0),
                  child:  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                })),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
               DrawerHeader(child: Image.network('https://cdn.pixabay.com/photo/2020/05/11/15/38/tom-5158824_960_720.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(color: Colors.grey[300],),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(Icons.home,color: Colors.white,),
            title: Text('Home',style: TextStyle(color: Colors.white),),),
          ),
           const Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(leading: Icon(Icons.info,color: Colors.white,),
            title: Text('About',style: TextStyle(color: Colors.white),),),
          ),
            ],
          ),
         
           const Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 25),
            child: ListTile(leading: Icon(Icons.logout,color: Colors.white,),
            title: Text('Loguot',style: TextStyle(color: Colors.white),),),
          )
        ],),
      ),
      body: _Page[_selectedIndex],
    );
  }
}
