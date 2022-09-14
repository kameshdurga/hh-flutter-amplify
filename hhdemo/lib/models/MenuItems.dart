import 'Menu.dart';

class MenuItems {
  MenuItems({
    required this.menus,
  });
  final List<Menu> menus;

  factory MenuItems.fromJson(Map<String, dynamic> data) {
    // cast to a nullable list as the reviews may be missing
    final menuItems = data['items'] as List<dynamic>?;
    print("inside menu items");
    // if the reviews are not missing
    final items = menuItems != null
        // map each review to a Review object
        ? menuItems
            .map((item) => Menu.fromJson(item))
            // map() returns an Iterable so we convert it to a List
            .toList()
        // use an empty list as fallback value
        : <Menu>[];
    // return result passing all the arguments
    return MenuItems(
      menus: items,
    );
  }
}
