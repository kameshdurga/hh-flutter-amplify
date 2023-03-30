class MyDataModel {
  String title;
  List<String> items;

  MyDataModel({required this.title, required this.items});

  factory MyDataModel.fromJson(Map<String, dynamic> json) {
    return MyDataModel(
      title: json['title'],
      items: List<String>.from(json['items']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'items': items,
    };
  }
}
