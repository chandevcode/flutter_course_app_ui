import 'package:course_app/constants.dart';
import 'package:course_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  var _imageUrl;
  var _title;
  var _courseAmount;
  CategoryCard(this._title, this._courseAmount, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(_imageUrl)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 30,
          height: MediaQuery.of(context).size.height / 4 - 10,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: _imageUrl,
                child: Image.asset(
                  _imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _title,
                        style: titleTextStyle,
                      ),
                      Text(
                        '$_courseAmount Courses',
                        style: subtitleTextStyle,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
