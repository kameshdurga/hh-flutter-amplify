import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:hhdemo/models/MenuItems.dart';
import 'package:provider/provider.dart';

import '../models/Cart.dart';
import '../models/Menu.dart';

class RestaurantMenuPage extends StatefulWidget {
  const RestaurantMenuPage(
      {Key? key,
      required this.name,
      required this.menu,
      required this.zipCode,
      required this.id})
      : super(key: key);

  final String name;
  final String menu;
  final String zipCode;
  final String id;

  @override
  State<RestaurantMenuPage> createState() => _RestaurantMenuPageState();
}

class _RestaurantMenuPageState extends State<RestaurantMenuPage> {
  final imageList = <String>[];
  int _selectedIndex = 0;

  _RestaurantMenuPageState() {
    // ignore: unnecessary_this
  }

  @override
  void initState() {
    super.initState();
    _getRestaurantMenu();
  }

  Future<void> _getRestaurantMenu() async {
    try {
      //final imageUrl = await _storageService.getUrl(widget.menu);

      setState(() {
        //_imagekey = imageUrl?.url ?? "";
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
    print("menu from widget is " + widget.menu);

    var cart = context.watch<Cart>();
    cart.setRestaurant(widget.id);
    cart.setZipCode(widget.zipCode);

    print("products lengthis ");

    print(cart.products.length.toString());

    final parsedJson = jsonDecode(widget.menu);

    final menuItems = MenuItems.fromJson(parsedJson);

    print("--------------done MenuItems-----------------------------");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('<'),
        ),
      ),
      body: _buildRows(menuItems, context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'HOME',
            activeIcon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => Navigator.of(context).pushNamed('/cart'),
            ),
            label: 'Cart',
            activeIcon: const Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.yellow,
              size: 36,
            ),
            label: 'Profile',
            activeIcon: Icon(
              Icons.person,
              color: Colors.yellow,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget builds(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("ListTile Example"),
        ),
        body: new ListView(
          children: new List.generate(7, (int index) {
            return new Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: new Column(
                children: <Widget>[
                  new Align(
                    child: new Text(
                      "Centered Title $index",
                      style: new TextStyle(fontSize: 40.0),
                    ), //so big text
                    alignment: FractionalOffset.topLeft,
                  ),
                  new Divider(
                    color: Colors.blue,
                  ),
                  new Align(
                    child: new Text("Subtitle $index"),
                    alignment: FractionalOffset.topLeft,
                  ),
                  new Divider(
                    color: Colors.blue,
                  ),
                  new Align(
                    child: new Text("More stuff $index"),
                    alignment: FractionalOffset.topLeft,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //add some actions, icons...etc
                      const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
                    ],
                  ),
                ],
              ),
            );
          }),
        ));
  }

  Widget _buildRows(MenuItems menuItems, BuildContext context) {
    print("--------------inside build rows------------------------------");
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // As you expect multiple lines you need a column not a row
        children: _buildRowList(menuItems),
      ),
    );
  }

  List<Widget> _buildRowList(MenuItems menuItems) {
    print(
        "--------------inside build _buildRowList------------------------------");

    List<Widget> items = []; // this will hold Rows according to available lines
    for (var item in menuItems.menus) {
      items.add(_buildListItem(item));
    }
    return items;
  }

  Widget _buildItem(Menu item) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text("-----hello inside"));
    //   child: const SizedBox(
    //       height: 5,
    //       width: 5,
    //       child: Text('----------------------------------------')),
    // );
  }

  Widget _buildListItem(Menu item) {
    // ignore: unnecessary_new
    return new Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: new Column(
        children: <Widget>[
          new Align(
            child: new Text(
              "" + item.item,
              style: const TextStyle(fontSize: 20.0),
            ), //so big text
            alignment: FractionalOffset.topLeft,
          ),
          new Align(
            child: new Text("\$" + item.price),
            alignment: FractionalOffset.topLeft,
          ),
          // ignore: unnecessary_new
          new Align(
            child: Text(context.read<Cart>().prodQuantity(item).toString()),
            alignment: FractionalOffset.topRight,
          ),
          new Align(
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<Cart>().addToCart(item);
              },
            ),
            alignment: FractionalOffset.centerRight,
          ),

          // new Align(
          //   child: new Text("More stuff $item.item"),
          //   alignment: FractionalOffset.topLeft,
          // ),
          // new Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
          //   ],
          // ),
        ],
      ),
    );
    ;
  }
}
