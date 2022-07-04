import 'package:flutter/material.dart';
import 'package:flutter_final_project/productdetails.dart';
import 'package:flutter_final_project/profile.dart';
import 'package:flutter_final_project/bottom_nav.dart';

class Home extends StatefulWidget {
  final String? data;
  final String? name;
  final String? price;
  Home({this.data, this.name, this.price});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 30, 0),
            child: Row(
              children: [
                Text(
                  'Good Afternoon, User',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 13, 0),
            child: Image(
              image: AssetImage('asset/covidbanner.png'),
              height: 300,
              width: 350,
            ),
          ),
          Card(
            child: Column(
              children: [
                Text(widget.name.toString()),
                Column(
                  children: [
                    Text(widget.data.toString()),
                    Text(widget.price.toString().toString()),
                  ],
                ),
                Icon(Icons.shopping_cart_checkout),
              ],
            ),
          )
        ],
      ),
    );
  }
}
