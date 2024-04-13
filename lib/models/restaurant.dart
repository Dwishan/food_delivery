import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and hint of onion and pickle.",
      imagePath: "lib/images/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/bbq_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce and tomato, served on whole.",
      imagePath: "lib/images/veg_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(name: "Teriyaki Galze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.49),
        Addon(name: "Bacon", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A char grilled chicken breast topped with a slice of grilled pineapple.",
      imagePath: "lib/images/aloha_burger.jpg",
      price: 9.99,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This burger is a blue cheese lover's dream. It features a succulent ground beef patty",
      imagePath: "lib/images/bluemoon_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(name: "Sauted Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy May0", price: 1.99),
      ],
    ),
    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesian cheese, croutons, and caesar dressing.",
      imagePath: "lib/images/caesar_salad.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesian", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumber, red onions, olives, feta cheese with olive oil and herbs.",
      imagePath: "lib/images/greek_salad.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      imagePath: "lib/images/quinoa_salad.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Chicken Salad",
      description:
          "This colorful salad combines the zesty flovors of the Southwest.",
      imagePath: "lib/images/chicken_salad.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Gaucamole", price: 1.49),
      ],
    ),
    Food(
      name: "Sesame Salad",
      description:
          "Delight in the flavors of East with this sesame-infused salad.",
      imagePath: "lib/images/sesame_salad.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    //sides
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt.",
      imagePath: "lib/images/potato_fries.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/onion_rings.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesian Dust", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Warm and toasty garlic bread, topped with melted butter and parsley.",
      imagePath: "lib/images/garlic_bread.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "Savory sweet potato fries loaded with melted cheese and smoky bacon bits.",
      imagePath: "lib/images/sweet_potato.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 1.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Golden brown, bite-sized mac and cheese balls, perfect for on-the-go snacking.",
      imagePath: "lib/images/bites.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalepeno Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 1.99),
      ],
    ),
    //desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Rich and fudgy chocolate brownie, with a chunk of chocolate.",
      imagePath: "lib/images/brownie.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availabeAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.49),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy cheesecake on a graham cracker crust, with a berry compote.",
      imagePath: "lib/images/cheesecake.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availabeAddons: [
        Addon(name: "Strawberry Topping", price: 0.49),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.",
      imagePath: "lib/images/apple_pie.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availabeAddons: [
        Addon(name: "Caramel Sauce", price: 0.49),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A delectable red velvet cake with a warm, gooey chocolate lave center.",
      imagePath: "lib/images/lava_cake.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availabeAddons: [
        Addon(name: "Raspberry Sauce", price: 0.49),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 1.99),
      ],
    ),
    //drinks
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/lemonade.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(name: "Strawberry Flavor", price: 0.49),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served over ice.",
      imagePath: "lib/images/iced_tea.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(name: "Peach Flavor", price: 0.49),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "A blend of fresh fruits and yogurt, perfect for a healthy boost.",
      imagePath: "lib/images/smoothie.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(name: "Protein Powder", price: 0.49),
        Addon(name: "Almond Milk", price: 1.49),
        Addon(name: "Chia Seeds", price: 1.99),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A classic Cuban cocktail with muddled lime and mint, sweetened with sugar.",
      imagePath: "lib/images/mojito.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(name: "Extra Mint", price: 0.49),
        Addon(name: "Raspberry Puree", price: 1.49),
        Addon(name: "Splash of Coconut Rum", price: 1.99),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description:
          "A layered coffee drink with steamed milk, espresso and vanilla syrup.",
      imagePath: "lib/images/macchiato.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(name: "Strawberry Flavor", price: 0.49),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    //
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
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
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
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

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //date and time
    String _formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(_formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  //value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
