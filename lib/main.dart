import 'package:flutter/material.dart';
import 'package:unit_converter/converter_route.dart';
import 'category_route.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unit Converter",
      debugShowCheckedModeBanner: false,
      home: CategoryRoute(),
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
          if (pathElements[1] == 'conversion') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute(
                builder: (BuildContext context) => ConverterRoute(units: null));
          }
          return null;
        },
    );
  }
}
