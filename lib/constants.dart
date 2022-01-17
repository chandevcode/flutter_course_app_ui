import 'package:flutter/material.dart';

Color titleColor = Color(0xff272640);
Color greyColor = Color(0xfff8f9fa);

TextStyle titleTextStyle =
    TextStyle(fontWeight: FontWeight.bold, color: titleColor, fontSize: 20);

TextStyle subtitleTextStyle =
    TextStyle(fontSize: 16, color: titleColor.withOpacity(0.7));

const categoryData = [
  {
    'title': 'Marketing',
    'courseAmount': 17,
    'imageUrl': 'assets/images/cat1.png'
  },
  {
    'title': 'UX Design',
    'courseAmount': 25,
    'imageUrl': 'assets/images/cat2.png'
  },
  {
    'title': 'Photography',
    'courseAmount': 13,
    'imageUrl': 'assets/images/cat3.png'
  },
  {
    'title': 'Business',
    'courseAmount': 20,
    'imageUrl': 'assets/images/cat4.png'
  },
];

const courseContent = [
  {'number': '01', 'title': 'Welcome to the Course', 'time': '5:35 mins'},
  {'number': '02', 'title': 'Design Thinking - Intro', 'time': '19:04 mins'},
  {'number': '03', 'title': 'Design Thinking - Process', 'time': '12:48 mins'},
  {'number': '04', 'title': 'Customer Perspective', 'time': '37:54 mins'},
];
