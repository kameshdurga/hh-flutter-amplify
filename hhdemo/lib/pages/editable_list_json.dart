import 'package:flutter/material.dart';

import '../models/MyDataModel.dart';

class EditableListWidget extends StatefulWidget {
  final MyDataModel data;

  const EditableListWidget({required this.data});

  @override
  _EditableListWidgetState createState() => _EditableListWidgetState();
}

class _EditableListWidgetState extends State<EditableListWidget> {
  List<String> _items = [];

  @override
  void initState() {
    super.initState();
    _items = List<String>.from(widget.data.items);
  }

  void _addItem() {
    setState(() {
      _items.add('');
    });
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  void _updateItem(int index, String value) {
    setState(() {
      _items[index] = value;
    });
  }

  void _saveChanges() {
    // Save the updated list of items to your data model or backend service
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.data.title),
        ListView.builder(
          shrinkWrap: true,
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: TextFormField(
                initialValue: _items[index],
                onChanged: (value) {
                  _updateItem(index, value);
                },
              ),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  _removeItem(index);
                },
              ),
            );
          },
        ),
        ElevatedButton(
          child: Text('Add Item'),
          onPressed: _addItem,
        ),
        ElevatedButton(
          child: Text('Save Changes'),
          onPressed: _saveChanges,
        ),
      ],
    );
  }
}
