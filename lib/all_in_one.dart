import 'package:flutter/material.dart';
import 'package:provider_learning/Counter_App/subscribe.dart';
import 'package:provider_learning/Example_App/example.dart';
import 'package:provider_learning/Favourate_app/fav_screen.dart';
import 'package:provider_learning/Light_Dark_Mode/theme_screen.dart';
import 'package:provider_learning/Login_with_API/Login_screen.dart';

class AllSceens extends StatefulWidget {
  const AllSceens({Key? key}) : super(key: key);

  @override
  State<AllSceens> createState() => _AllSceensState();
}

class _AllSceensState extends State<AllSceens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All in One"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Subscribe()));
                },
                child: Container(
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text("Counter App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightGreen,
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThemeScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text("Theme App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amberAccent,
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavourateScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text("Favourate App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text("Login App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyanAccent,
                      ),
                    ),
                  )),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Example()));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text("Example App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
