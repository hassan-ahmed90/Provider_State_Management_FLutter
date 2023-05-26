import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Counter_App/counter_provider.dart';
import 'package:provider_learning/Example_App/example.dart';
import 'package:provider_learning/Example_App/example_provider.dart';
import 'package:provider_learning/Favourate_app/fav_provider.dart';
import 'package:provider_learning/Favourate_app/fav_screen.dart';
import 'package:provider_learning/Light_Dark_Mode/theme_provider.dart';
import 'package:provider_learning/Light_Dark_Mode/theme_screen.dart';
import 'package:provider_learning/Login_with_API/Login_screen.dart';
import 'package:provider_learning/Login_with_API/auth_provider.dart';
import 'package:provider_learning/notify_listner.dart';
import 'package:provider_learning/state_ful.dart';
import 'package:provider_learning/state_les.dart';
import 'package:provider_learning/Counter_App/subscribe.dart';
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
          ChangeNotifierProvider(create: (_)=>ThemeProvider()),
          ChangeNotifierProvider(create: (_)=>AuthProvider()),
        ],

        child: Builder(

          builder: (BuildContext context){
            final themeChanger= Provider.of<ThemeProvider>(context);
            return  MaterialApp(
              themeMode:themeChanger.themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.orange
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark
              ),
              home: LoginScreen(),
            );
          },

        ),
      ),
    );
  }
}
