import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class PaymentPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentStatelessPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '99.99',
    status: PaymentItemStatus.final_price,
  )
];

class PaymentStatelessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple Pay Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ApplePayButton(
              paymentConfigurationAsset: 'applepay.json',
              paymentItems: _paymentItems,
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.buy,
              width: 200,
              height: 50,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (value) {
                print(value);
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
