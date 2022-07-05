import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class productdetails extends StatefulWidget {
  //productdetails({this.data, this.name, this.price});
  final int? star;
  final String? name;
  final String? description;
  final String? img;
  final int? price;
  final String? location;
  productdetails({
    this.description,
    this.img,
    this.star,
    this.name,
    this.price,
    this.location,
  });

  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.network(
                'http://mark.bslmeiyu.com/uploads/${widget.img.toString()}'),
            Center(
              child: Container(
                child: Text(
                  widget.name.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'RS:${widget.price.toString()}',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Container(
              child: Text(widget.description.toString()),
            ),
            RatingBar.builder(
              initialRating: widget.star!.toDouble(),
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemSize: 20,
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ));
  }
}
