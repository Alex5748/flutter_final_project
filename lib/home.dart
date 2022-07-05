import 'package:flutter/material.dart';
import 'package:flutter_final_project/productdetails.dart';
import 'package:flutter_final_project/profile.dart';
import 'package:flutter_final_project/bottom_nav.dart';
import 'package:flutter_final_project/services/network_helper.dart';

class Home extends StatefulWidget {
  final String? data;
  final String? name;
  final String? price;
  Home({this.data, this.name, this.price});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var posts;
  @override
  void initState() {
    super.initState();
    MApidata();
  }

  MApidata() async {
    posts = await NetworkHelper().getAPIResponse();
    setState(() {});
  }

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
      body: SingleChildScrollView(
        child: Column(
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
            posts != null
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.network(
                              'http://mark.bslmeiyu.com/uploads/${posts[index].img}',
                              height: 100,
                              width: 100,
                            ),
                            Spacer(),
                            Text(posts[index].name),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return productdetails(
                                        description: posts[index].description,
                                        star: posts[index].stars,
                                        img: posts[index].img,
                                        price: posts[index].price,
                                        name: posts[index].name,
                                        location: posts[index].location,
                                      );
                                    }));
                                  });
                                },
                                icon: Icon(Icons.forward))
                          ],
                        ),
                      );
                    })
                : Center(child: CircularProgressIndicator()),
            // Card(
            //   child: Column(
            //     children: [
            //       Text(widget.name.toString()),
            //       Column(
            //         children: [
            //           Text(widget.data.toString()),
            //           Text(widget.price.toString().toString()),
            //         ],
            //       ),
            //       Icon(Icons.shopping_cart_checkout),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
