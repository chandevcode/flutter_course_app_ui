// ignore_for_file: prefer_const_constructors

import 'package:course_app/components/custom_tile.dart';
import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  var _imageUrl;
  DetailScreen(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2 + 40,
            child: Hero(
              tag: _imageUrl,
              child: Image.asset(
                _imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60,
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    color: Colors.amber,
                    child: Text(
                      'BEST SELLER',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Design Thinking',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.people),
                      Text(
                        '16k',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.star),
                      Text(
                        '4.8',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$50',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: titleColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 0,
            child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.more_vert)),
          ),
          SizedBox(height: 50),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2 + 60,
                decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Course Content',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                          children: courseContent
                              .map((content) => Customtile(content['number'],
                                  content['title'], content['time']))
                              .toList())
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Color(0xffFFEDEE),
                      child: Icon(
                        Icons.local_mall,
                        color: Color(0xffFF6670),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(0xff6E8AfA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
