import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("LOGIN",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){

              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal,
                ),
                child: Center(child: Text("Logg In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
