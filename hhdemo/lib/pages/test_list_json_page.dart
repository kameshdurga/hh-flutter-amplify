import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/MyDataModel.dart';
import 'editable_list_json.dart';

class MyHomePageTemp extends StatelessWidget {
  final String json = '''
    {
      "title": "My List",
      "items": [
        "Item 1",
        "Item 2",
        "Item 3"
      ]
    }
  ''';

  @override
  Widget build(BuildContext context) {
    final MyDataModel data = MyDataModel.fromJson(jsonDecode(json));

    return Scaffold(
      body: Center(
        child: EditableListWidget(data: data),
      ),
    );
  }
}
