import 'package:flutter/material.dart';
// import 'package:my_app/models/meal.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListtile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blueGrey,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.blueGrey,
            fontFamily: 'RobotoCondensed',
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(25),
          alignment: Alignment.topLeft,
          color: Colors.white,
          child: Text(
            'Cooking Up!!',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        SizedBox(height: 10),
        buildListtile(
          "Meals",
          Icons.restaurant,
          () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildListtile(
          "Filter",
          Icons.settings,
          () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          },
        )
      ]),
    );
  }
}
