// ignore: camel_case_types

class WishList {
  late int id;
  late String image;
  late String name;
  late String description;
  late String price;
  late String size;
  late String color;

  wishListMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['image'] = image;
    mapping['name'] = name;
    mapping['description'] = description;
    mapping['price'] = price;
    mapping['size'] = size;
    mapping['color'] = color;
    return mapping;
  }
}
