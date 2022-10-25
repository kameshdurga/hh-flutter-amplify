import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:hhdemo/models/Restaurants.dart';
import 'package:hhdemo/pages/cart_page.dart';
import 'package:hhdemo/pages/home_page.dart';
import 'package:provider/provider.dart';
import '../services/api_service.dart';
import 'amplifyconfiguration.dart';
import 'models/Cart.dart';
import 'models/ModelProvider.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// main.dart
// import 'package:flutter_stripe/flutter_stripe.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey =
  //     "pk_test_51LhlbyE1xegtq2U8GJnfRmfidAobw7Td9I1Ds4Yx7W7JB0JM1MYCCNSIEgApJws6CnB1tbwiO6Bl5DdKibOi1ean00k8anJcMD";

  runApp(
    MultiProvider(
      providers: [
        // The user provider uses a value constructor because the value
        // already exists, and we want to make sure we're using the same user

        // Store and Cart are both needed on the home page,
        // so they're provided right off the bat
        ChangeNotifierProvider<Cart>(create: (_) => Cart()),
      ],
      child: const MyApp(),

      // child: MaterialApp(
      //   title: 'Provider Demo',
      //   initialRoute: '/',
      //   routes: {
      //     '/': (context) => const MyApp(),
      //     '/cart': (context) => const MyCart(),
      //   },
      // ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final APIService _apiService = APIService();
  bool _amplifyConfigured = false;

  List<Restaurants> _restaurants = const [];

  @override
  void initState() {
    super.initState();
    print("calling restaurant");
    _configureAmplify();

    // _getRestaurants();
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   // This method is rerun every time setState is called, for instance as done
  //   // by the _incrementCounter method above.
  //   //
  //   // The Flutter framework has been optimized to make rerunning build methods
  //   // fast, so that you can just rebuild anything that needs updating rather
  //   // than having to individually change instances of widgets.
  //   return Scaffold(
  //     appBar: AppBar(
  //       // Here we take the value from the MyHomePage object that was created by
  //       // the App.build method, and use it to set our appbar title.
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       // Center is a layout widget. It takes a single child and positions it
  //       // in the middle of the parent.
  //       child: Column(
  //         // Column is also a layout widget. It takes a list of children and
  //         // arranges them vertically. By default, it sizes itself to fit its
  //         // children horizontally, and tries to be as tall as its parent.
  //         //
  //         // Invoke "debug painting" (press "p" in the console, choose the
  //         // "Toggle Debug Paint" action from the Flutter Inspector in Android
  //         // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
  //         // to see the wireframe for each widget.
  //         //
  //         // Column has various properties to control how it sizes itself and
  //         // how it positions its children. Here we use mainAxisAlignment to
  //         // center the children vertically; the main axis here is the vertical
  //         // axis because Columns are vertical (the cross axis would be
  //         // horizontal).
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           const Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.headline4,
  //           ),
  //           buildApp(context)
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ), // This trailing comma makes auto-formatting nicer for build methods.
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: buildApp(context),
    //   scaffoldMessengerKey: scaffoldMessengerKey,
    // );

    return MaterialApp(
      home: buildApp(context),
      scaffoldMessengerKey: scaffoldMessengerKey,
      title: 'Provider Demo',
      initialRoute: '/',
      routes: {
        '/cart': (context) => const MyCart(),
      },
    );
  }

  Widget buildApp(BuildContext context) {
    return _amplifyConfigured
        ? const HomePage(title: 'Restaurants')
        : _waitForAmplify();
  }

  void _configureAmplify() async {
    try {
      final storage = AmplifyStorageS3();
      AmplifyAuthCognito auth = AmplifyAuthCognito();
      await Amplify.addPlugins(
          [auth, AmplifyAPI(modelProvider: ModelProvider.instance), storage]);
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } on AmplifyAlreadyConfiguredException {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          'Tried to reconfigure Amplify; '
          'this can occur when your app restarts on Android.',
        ),
      ));
    }
  }

  Text _waitForAmplify() {
    return Text(
      '$_restaurants[0]',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
