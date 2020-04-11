import 'package:flutter/material.dart';
import 'package:unit_converter/converter_route.dart';

class Category extends StatelessWidget {
  final _categoryName;
  final _categoryIcon;
  final _categoryColor;
  final _key;

  const Category(
      this._categoryName, this._categoryIcon, this._categoryColor, this._key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: _key,
      onTap: () => Navigator.pushNamed(context, '/conversion/1'),
      onLongPress: ()=>{
        showModalBottomSheet(context: context, builder: (BuildContext context){
          return ConverterRoute(units: null);
        })
      },
      splashColor: _categoryColor,
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.height / 2),
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 100.0,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(_categoryIcon, size: 64.0),
              ),
              Text(
                _categoryName,
                style: TextStyle(
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}
