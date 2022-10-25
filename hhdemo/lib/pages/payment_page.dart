// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// // payment_screen.dart
// class PaymentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           CardField(
//             onCardChanged: (card) {
//               print(card);
//             },
//           ),
//           TextButton(
//             onPressed: () async {
//               // create payment method
//               final paymentMethod = await Stripe.instance.createPaymentMethod(
//                   PaymentMethodParams.card(
//                       paymentMethodData: PaymentMethodData()));
//             },
//             child: Text('pay'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ApplePay extends StatefulWidget {
//   @override
//   _ApplePayState createState() => _ApplePayState();
// }

// class _ApplePayState extends State<ApplePay> {
//   @override
//   void initState() {
//     Stripe.instance.isApplePaySupported.addListener(update);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     Stripe.instance.isApplePaySupported.removeListener(update);
//     super.dispose();
//   }

//   void update() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           if (Stripe.instance.isApplePaySupported.value)
//             Padding(
//               padding: EdgeInsets.all(16),
//               child: ApplePayButton(
//                 onPressed: _handlePayPress,
//               ),
//             )
//           else
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: Text('Apple Pay is not available in this device'),
//             ),
//         ],
//       ),
//     );
//   }
// }

// Future<void> _handlePayPress() async {
//   try {} catch (e) {}
// }
