import 'package:flutter/material.dart';
import '../models/ModelProvider.dart';

import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final APIService _apiService = APIService();

  List<Restaurants> _restaurants = const [];

  @override
  void initState() {
    super.initState();
    _getRestaurants();
  }

  Future<void> _getRestaurants() async {
    try {
      final restaurants = await _apiService.getRestaurants();
      setState(() {
        _restaurants =
            restaurants?.whereType<Restaurants>().toList() ?? const [];
        print(_restaurants);
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Restaurantwidget(),
    );
  }

  Widget Restaurantwidget() {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: _restaurants.length,
      itemBuilder: (context, index) {
        final _restaurantItem = _restaurants[index];
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text('${_restaurantItem.Name}'),
          ),
          title: Text('${_restaurantItem.City}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          indent: 20,
          endIndent: 20,
        );
      },
    );
  }
}
