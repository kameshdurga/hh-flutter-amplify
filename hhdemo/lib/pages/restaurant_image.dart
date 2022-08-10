import 'package:flutter/material.dart';
import 'package:hhdemo/services/storage_service.dart';

class RestaurantImagePage extends StatefulWidget {
  const RestaurantImagePage(
      {Key? key,
      required this.imageKey,
      required this.name,
      required this.city})
      : super(key: key);

  final String imageKey;
  final String name;
  final String city;

  @override
  State<RestaurantImagePage> createState() => _RestaurantImagePageState();
}

class _RestaurantImagePageState extends State<RestaurantImagePage> {
  final StorageService _storageService = StorageService();

  final imageList = <String>[];

  String _imagekey = "";

  _RestaurantImagePageState() {
    // ignore: unnecessary_this
  }

  @override
  void initState() {
    super.initState();
    _getRestaurantImage();
  }

  Future<void> _getRestaurantImage() async {
    try {
      final imageUrl = await _storageService.getUrl(widget.imageKey);

      setState(() {
        _imagekey = imageUrl?.url ?? "";
        print("got imagekey " + _imagekey!);
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.toString()),
      ));
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   // return Scaffold(
  //   //   body: Text(_imagekey!),
  //   // );

  //   return ListTile(
  //     // leading: Padding(
  //     //   padding: const EdgeInsets.all(2.0),
  //     //   child: Text('${_restaurantItem.Name}'),
  //     // ),
  //     leading: Image.network(_imagekey),
  //     title: Text(widget.name),
  //     subtitle: Text(widget.city),
  //     trailing: Row(
  //       mainAxisSize: MainAxisSize.min,
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           widget.name,
  //           style: const TextStyle(
  //             fontWeight: FontWeight.w500,
  //             fontSize: 14.0,
  //           ),
  //         ),
  //         const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
  //         Text(
  //           widget.city,
  //           style: const TextStyle(fontSize: 10.0),
  //         ),
  //         const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
  //         Text(
  //           ' views',
  //           style: const TextStyle(fontSize: 10.0),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.network(
              _imagekey,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              widget.city,
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
