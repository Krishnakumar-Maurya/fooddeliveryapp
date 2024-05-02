import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swaad/models/cart_items.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu

  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheeseburger",
        Description:
            "A juicy patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        imagePath: "lib/images/burgers/cheese_burger.jpg",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avacado", price: 2.99)
        ]),

    Food(
        name: "BBQ Burger",
        Description:
            "A savory patty topped with tangy BBQ sauce, crispy bacon, melted cheddar, lettuce, and tomato",
        imagePath: "lib/images/burgers/bbq_burger.jpg",
        price: 1.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Grilled onions", price: 0.99),
          Addon(name: "Jalapenos", price: 0.99)
        ]),

    Food(
        name: "Aloha Burger",
        Description:
            "A tropical twist with a juicy patty, grilled pineapple, crispy bacon, lettuce, and tangy teriyaki sauce",
        imagePath: "lib/images/burgers/aloha_burger.jpg",
        price: 1.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Grilled onions", price: 0.99),
          Addon(name: "Ham", price: 1.49)
        ]),

    Food(
        name: "Blue Moon Burger",
        Description:
            "A unique flavor combination with a blue cheese-stuffed patty, caramelized onions, lettuce, and garlic aioli",
        imagePath: "lib/images/burgers/bluemoon_burger.png",
        price: 1.79,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra blue cheese", price: 1.29),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Arugula", price: 0.79)
        ]),

    Food(
        name: "Veg Burger",
        Description:
            "A delicious vegetarian option with a plant-based patty, lettuce, tomato, onion, and pickles",
        imagePath: "lib/images/burgers/vege_burger.jpg",
        price: 1.29,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Avocado", price: 1.29),
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Grilled mushrooms", price: 0.99)
        ]),

    //salads
    Food(
        name: "Caesar Salad",
        Description:
            "Crisp romaine lettuce, garlic croutons, parmesan cheese, and Caesar dressing",
        imagePath: "lib/images/salads/caesar_salad.jpg",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 2.99),
          Addon(name: "Shrimp", price: 3.49),
          Addon(name: "Anchovies", price: 1.49)
        ]),

    Food(
        name: "Greek Salad",
        Description:
            "Mixed greens, cucumbers, tomatoes, red onions, kalamata olives, and feta cheese with Greek dressing",
        imagePath: "lib/images/salads/greek_salad.jpg",
        price: 6.49,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 2.99),
          Addon(name: "Gyro Meat", price: 3.49),
          Addon(name: "Hummus", price: 1.99)
        ]),

    Food(
        name: "Caprese Salad",
        Description:
            "Fresh tomatoes, mozzarella cheese, and basil leaves drizzled with balsamic glaze",
        imagePath: "lib/images/salads/caprese_salad.jpg",
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Lamb", price: 4.99),
          Addon(name: "Falafel", price: 2.49),
          Addon(name: "Tabbouleh", price: 1.99)
        ]),

    Food(
        name: "Spinach Salad",
        Description:
            "Baby spinach with strawberries, goat cheese, candied pecans, and balsamic vinaigrette",
        imagePath: "lib/images/salads/spinach_salad.jpg",
        price: 6.79,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Prosciutto", price: 2.99),
          Addon(name: "Balsamic Glaze Drizzle", price: 0.99),
          Addon(name: "Toasted Pine Nuts", price: 1.49)
        ]),

    Food(
        name: "Mediterranean Salad",
        Description:
            "Romaine lettuce, cherry tomatoes, cucumber, red onion, feta cheese, and olives with lemon herb dressing",
        imagePath: "lib/images/salads/mediterranean_salad.jpg",
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Salmon", price: 3.99),
          Addon(name: "Crispy Tofu", price: 2.49),
          Addon(name: "Candied Walnuts", price: 1.99)
        ]),

    //sides
    Food(
        name: "Garlic Parmesan Fries",
        Description:
            "Crispy fries tossed in garlic butter and grated parmesan cheese",
        imagePath: "lib/images/sides/garlic_parmesan_fries.jpg",
        price: 2.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Bacon Bits", price: 1.49),
          Addon(name: "Truffle Oil Drizzle", price: 1.99),
          Addon(name: "Jalapeno Slices", price: 0.99)
        ]),

    Food(
        name: "Onion Rings",
        Description:
            "Golden-brown and crispy onion rings served with dipping sauce",
        imagePath: "lib/images/sides/onion_rings.jpg",
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Spicy Aioli", price: 0.99),
          Addon(name: "Beer-Battered Pickles", price: 1.49),
          Addon(name: "Cheddar Cheese Sauce", price: 1.99)
        ]),

    Food(
        name: "Sweet Potato Fries",
        Description: "Crispy sweet potato fries lightly seasoned with salt",
        imagePath: "lib/images/sides/sweet_potato_fries.jpg",
        price: 3.29,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Maple Syrup Drizzle", price: 1.49),
          Addon(name: "Cinnamon Sugar Sprinkle", price: 0.99),
          Addon(name: "Chipotle Mayo", price: 0.99)
        ]),

    Food(
        name: "Macaroni and Cheese",
        Description: "Creamy macaroni pasta with melted cheddar cheese",
        imagePath: "lib/images/sides/macaroni_and_cheese.jpg",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Crispy Bacon", price: 1.99),
          Addon(name: "Broccoli Florets", price: 0.99),
          Addon(name: "Lobster Meat", price: 3.99)
        ]),

    Food(
        name: "Side Salad",
        Description:
            "Mixed greens, cherry tomatoes, cucumber, and carrot ribbons with choice of dressing",
        imagePath: "lib/images/sides/side_salad.jpg",
        price: 2.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 2.49),
          Addon(name: "Crumbled Feta Cheese", price: 1.29),
          Addon(name: "Avocado Slices", price: 1.49)
        ]),

    //desserts
    Food(
        name: "Chocolate Brownie Sundae",
        Description:
            "Warm chocolate brownie topped with vanilla ice cream, chocolate sauce, and whipped cream",
        imagePath: "lib/images/desserts/chocolate_brownie_sundae.jpg",
        price: 3.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Scoop of Ice Cream", price: 1.29),
          Addon(name: "Hot Fudge Sauce", price: 0.99),
          Addon(name: "Chopped Nuts", price: 0.79)
        ]),

    Food(
        name: "New York Cheesecake",
        Description:
            "Creamy cheesecake with a graham cracker crust, served with strawberry sauce",
        imagePath: "lib/images/desserts/new_york_cheesecake.jpg",
        price: 4.49,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Fresh Berries", price: 1.49),
          Addon(name: "Whipped Cream", price: 0.99),
          Addon(name: "Chocolate Shavings", price: 0.79)
        ]),

    Food(
        name: "Fruit Tart",
        Description:
            "Butter pastry crust filled with vanilla custard and topped with fresh seasonal fruits",
        imagePath: "lib/images/desserts/fruit_tart.jpg",
        price: 2.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Bean Ice Cream", price: 1.99),
          Addon(name: "Toasted Coconut Flakes", price: 0.99),
          Addon(name: "Passion Fruit Drizzle", price: 1.49)
        ]),

    Food(
        name: "Classic Tiramisu",
        Description:
            "Layers of espresso-soaked ladyfingers and mascarpone cheese, dusted with cocoa powder",
        imagePath: "lib/images/desserts/tiramisu.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Amaretto Liqueur Shot", price: 2.49),
          Addon(name: "Chocolate Covered Espresso Bean", price: 0.99),
          Addon(name: "Shaved Dark Chocolate", price: 1.29)
        ]),

    Food(
        name: "Key Lime Pie",
        Description:
            "Tangy and creamy key lime filling in a buttery graham cracker crust, topped with whipped cream",
        imagePath: "lib/images/desserts/key_lime_pie.jpg",
        price: 3.79,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Whipped Cream", price: 0.79),
          Addon(name: "Toasted Coconut Flakes", price: 0.99),
          Addon(name: "Raspberry Coulis", price: 1.49)
        ]),

    //drinks
    Food(
        name: "Iced Caramel Macchiato",
        Description:
            "Rich espresso poured over ice with creamy milk and caramel syrup",
        imagePath: "lib/images/drinks/iced_caramel_macchiato.jpg",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Shot of Espresso", price: 0.79),
          Addon(name: "Whipped Cream", price: 0.49),
          Addon(name: "Caramel Drizzle", price: 0.99)
        ]),

    Food(
        name: "Mango Tango Smoothie",
        Description:
            "Refreshing blend of mango, pineapple, banana, and orange juice",
        imagePath: "lib/images/drinks/mango_tango_smoothie.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Chia Seeds", price: 0.49),
          Addon(name: "Coconut Flakes", price: 0.79),
          Addon(name: "Protein Powder", price: 1.49)
        ]),

    Food(
        name: "Classic Mojito",
        Description:
            "A refreshing mix of rum, fresh lime juice, mint leaves, sugar, and soda water",
        imagePath: "lib/images/drinks/classic_mojito.jpg",
        price: 5.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Fresh Mint Leaves", price: 0.49),
          Addon(name: "Lime Wedge", price: 0.29),
          Addon(name: "Simple Syrup", price: 0.49)
        ]),

    Food(
        name: "Berry Blast Lemonade",
        Description:
            "Lemonade with a burst of mixed berries and a hint of mint",
        imagePath: "lib/images/drinks/berry_blast_lemonade.jpg",
        price: 3.79,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Fresh Berries", price: 1.29),
          Addon(name: "Lemon Twist", price: 0.49),
          Addon(name: "Sparkling Water", price: 0.79)
        ]),

    Food(
        name: "Iced Green Tea",
        Description: "Refreshing green tea served over ice, lightly sweetened",
        imagePath: "lib/images/drinks/iced_green_tea.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Honey Syrup", price: 0.49),
          Addon(name: "Lemon Slice", price: 0.29),
          Addon(name: "Mint Sprig", price: 0.49)
        ])
  ];

  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
  operations
  */

  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //see if there is a cart item already with the same food and selected addons
      bool isSameFood = item.food == food;

      //check if the selected addons are same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if the item already exists
    if (cartItem != null) {
      cartItem.quantity++;
    }
//otherwise , add a new cart item to the cart

    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

  // remove form cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal + cartItem.quantity;
    }
    return total;
  }

  //get total numbers of items in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /* Helpers*/

  //generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln("--------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      receipt.writeln();
    }

    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
