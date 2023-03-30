// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hhdemo/models/LoggedUser.dart';
import 'package:provider/provider.dart';

import '../models/Cart.dart';
import 'package:pay/pay.dart';

import '../services/api_service.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('<'),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: _CartList(),
              ),
            ),
            const Divider(height: 4, color: Colors.black),
            _CartTotal()
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.titleLarge;
    // This gets the current state of CartModel and also tells Flutter
    // to rebuild this widget when CartModel notifies listeners (in other words,
    // when it changes).
    var cart = context.watch<Cart>();

    return ListView.builder(
      itemCount: cart.products.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {
            cart.removeFromCart(cart.products[index]);
          },
        ),
        title: Text(
          cart.products[index].item,
          style: itemNameStyle,
        ),
        subtitle: Text(
          cart.prodQuantity(cart.products[index]).toString(),
          style: itemNameStyle,
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final APIService _apiService = APIService();

  @override
  Widget build(BuildContext context) {
    var hugeStyle =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 48);

    var cart = context.watch<Cart>();
    print("total is ");
    print(cart.products.length);

    var total = cart.total.toString();

    print("total is after " + total);

    var _paymentItems = [
      PaymentItem(
        label: 'Total',
        amount: total,
        status: PaymentItemStatus.final_price,
      )
    ];

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Another way to listen to a model's change is to include
            // the Consumer widget. This widget will automatically listen
            // to CartModel and rerun its builder on every change.
            //
            // The important thing is that it will not rebuild
            // the rest of the widgets in this build method.
            Consumer<Cart>(
                builder: (context, cart, child) =>
                    Text('\$${cart.total}', style: hugeStyle)),

            const SizedBox(width: 24),
            // TextButton(
            //   onPressed: () async {
            //     // Navigator.push(
            //     //     context, MaterialPageRoute(builder: (_) => ApplePay()));

            //     await Stripe.instance.presentPaymentSheet();
            //   },
            //   style: TextButton.styleFrom(),
            //   child: const Text('Donate'),
            // ),

            ApplePayButton(
              paymentConfigurationAsset: '/applepay.json',
              paymentItems: _paymentItems,
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.buy,
              width: 200,
              height: 50,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (value) {
                print("--------payment done----------------------");
                print(cart.total);
                _apiService.saveCart(cart, cart.userEmail);
              },
              onError: (error) {
                print(error);
              },
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
