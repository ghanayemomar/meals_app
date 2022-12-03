import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  const Category(
      {@required this.id, @required this.title, this.color = Colors.orange});
}
//when we add const the error in the dummy data is disapear beacuse we tell that is const and when we define the data in the dummy it was const.
