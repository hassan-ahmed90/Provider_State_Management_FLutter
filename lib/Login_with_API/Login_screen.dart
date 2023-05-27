import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Login_with_API/auth_provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
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
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                
                authProvider.login(emailController.text.toString(), passwordController.text.toString());



              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal,
                ),
                child: Center(child: authProvider.loading ? CircularProgressIndicator(color: Colors.white,): Text("Logg In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
