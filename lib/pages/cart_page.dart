import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            "Cart",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Clear cart?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
              icon: Icon(
                Icons.delete_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(
                          child: Center(
                            child: Text(
                              "Cart is empty...",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = userCart[index];
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                ],
              ),
            ),
            //pay button
            MyButton(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    ),
                text: "Pay Now"),
            const SizedBox(height: 25),
          ],
        ),
      );
    });
  }
}
