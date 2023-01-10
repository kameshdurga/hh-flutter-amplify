import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:hhdemo/models/LoggedUser.dart';
import 'package:hhdemo/pages/cart_page.dart';
import 'package:hhdemo/pages/home_page.dart';
import 'package:provider/provider.dart';
import '../services/api_service.dart';
import 'amplifyconfiguration.dart';
import 'models/Cart.dart';
import 'models/ModelProvider.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:flutter/material.dart';
// main.dart
// import 'package:flutter_stripe/flutter_stripe.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void _configureAmplify() async {
  final storage = AmplifyStorageS3();
  AmplifyAuthCognito auth = AmplifyAuthCognito();
  await Amplify.addPlugins(
      [auth, AmplifyAPI(modelProvider: ModelProvider.instance), storage]);
  await Amplify.configure(amplifyconfig);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey =
  //     "pk_test_51LhlbyE1xegtq2U8GJnfRmfidAobw7Td9I1Ds4Yx7W7JB0JM1MYCCNSIEgApJws6CnB1tbwiO6Bl5DdKibOi1ean00k8anJcMD";
  _configureAmplify();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(create: (_) => Cart()),
        ChangeNotifierProvider<LoggedUser>(create: (_) => LoggedUser())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: Authenticator.builder(),
        scaffoldMessengerKey: scaffoldMessengerKey,
        initialRoute: '/',
        routes: {
          '/cart': (context) => const MyCart(),
          "/": (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final APIService _apiService = APIService();

  List<Restaurants> _restaurants = const [];

  @override
  void initState() {
    super.initState();
  }

  Future<void> _getRestaurants() async {
    try {
      final restaurants = await _apiService.getRestaurants();
      setState(() {
        _restaurants =
            restaurants?.whereType<Restaurants>().toList() ?? const [];
        print(_restaurants);
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.toString()),
      ));
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(
      title: 'Hunger heroes',
    );
  }

  Text _waitForAmplify() {
    return Text(
      '$_restaurants[0]',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
