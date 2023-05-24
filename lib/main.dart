import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/counter_provider.dart';
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
      home: ChangeNotifierProvider(
        create: (_)=> CounterProvider(),
        child: MaterialApp(
          home: Subscribe(),
        ),
      ),
    );
  }
}
