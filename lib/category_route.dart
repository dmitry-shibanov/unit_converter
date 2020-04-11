import 'package:flutter/material.dart';

import 'category.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency'
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red
  ];

  Widget _listView(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? ListView.builder(
            itemBuilder: _itemCategory,
            itemCount: _categoryNames.length,
          )
        : GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: _itemCategory,
            itemCount: _categoryNames.length,
          );
  }

  Widget _itemCategory(BuildContext context, int index) {
    Key key = Key("item $index");
    return Category(_categoryNames[index], Icons.cake, _baseColors[index], key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          elevation: 0,
          title: Text("Unit Converter",
              style: TextStyle(color: Colors.black, fontSize: 30.0)),
        ),
        body: _listView(context));
  }
}
