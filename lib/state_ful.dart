import 'package:flutter/material.dart';
class HomeSTFL extends StatefulWidget {

   HomeSTFL({Key? key}) : super(key: key);
  @override
  State<HomeSTFL> createState() => _HomeSTFLState();
}
 int  x =0;
class _HomeSTFLState extends State<HomeSTFL> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return  Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(x.toString(),style: TextStyle(fontSize: 30),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){


          setState(() {
            x++;
          });


        },
      ),
    );
  }
}
