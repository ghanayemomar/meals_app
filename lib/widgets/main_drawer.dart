import 'package:flutter/material.dart';
// import 'package:my_app/models/meal.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListtile(String title, IconData icon) {
    return ListTile(
        leading: Icon(
          icon,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        onTap: () {
          //..
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
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
        buildListtile("Meals", Icons.restaurant),
        buildListtile("Setting", Icons.settings)
      ]),
    );
  }
}
