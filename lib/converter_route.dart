import 'package:flutter/material.dart';
import 'package:unit_converter/unit.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;
  final _formKey = new GlobalKey<FormState>();

  ConverterRoute({
    @required this.units,
  }); //: assert(units != null);

  void onSaved(String str) {
    if (_formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  onSaved: onSaved,
                  decoration: InputDecoration(
                    helperText: "Преобразуемая величиниа",
                    hintText: "Величина",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.black)),
                  ),
                ),
                DropdownButton(items: null, onChanged: null),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child:
                IconButton(
                  icon: Icon(Icons.compare_arrows),
                  onPressed: () => {},
                ),),
                TextFormField(
                  onSaved: onSaved,
                  enabled: false,
                  decoration: InputDecoration(
                    helperText: "Преобразованная величиниа",
                    hintText: "Преобразование",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.black)),
                  ),
                ),
                DropdownButton(items: null, onChanged: null),
              ]),
        ),
      ),
    );
  }
}
