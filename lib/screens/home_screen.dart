import 'package:course_app/components/category_card.dart';
import 'package:course_app/components/search_bar.dart';
import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Image.asset('assets/images/profile.png')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hi Putu Chandra',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Find a Course You Want to Learn',
                  style: subtitleTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: titleColor),
                    ),
                    Text(
                      'All',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: categoryData
                      .map((category) => CategoryCard(category['title'],
                          category['couseAmount'], category['imageUrl']))
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
