class Food {
  final String name;            //cheese burger
  final String Description;     // a burger full of cheese
  final String imagePath;       // lib/images/cheese_burger.png
  final double price;           //4.99
  final FoodCategory category;   //burger
  List<Addon> availableAddons;  //extra cheese

  Food(
      {required this.name,
      required this.Description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

// Food Categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food addons

class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
