import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: greyColor,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: titleColor,
            )),
      ),
    );
  }
}
