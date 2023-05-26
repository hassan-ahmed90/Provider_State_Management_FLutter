import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/counter_provider.dart';
import 'package:provider_learning/example.dart';
import 'package:provider_learning/example_provider.dart';
import 'package:provider_learning/fav_provider.dart';
import 'package:provider_learning/fav_screen.dart';
import 'package:provider_learning/state_ful.dart';
import 'package:provider_learning/state_les.dart';
import 'package:provider_learning/subscribe.dart';
import 'package:provider_learning/why_provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: MultiProvider(
        providers: [
        
         ChangeNotifierProvider(create: (_)=>CounterProvider()),
          ChangeNotifierProvider(create: (_)=>ExampleProvider()),
          ChangeNotifierProvider(create: (_)=>FavProvider()),
        ],

        child: MaterialApp(
          home: FavourateScreen(),
        ),
      ),
    );
  }
}
