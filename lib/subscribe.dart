import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/counter_provider.dart';
class Subscribe extends StatefulWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {

    final cv = Provider.of<CounterProvider>(context,listen: false);
    print("Shani");
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Subscribe"),
        centerTitle: true,
      ),
      body: Center(
            child: Consumer<CounterProvider>(
              builder: (context,value,child){
                print('Text built');
                return Text(value.count.toString(),style: TextStyle(color: Colors.yellow,fontSize: 30));
              },
            ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

            cv.setCount();


        },
        child: Icon(Icons.add),
      ),

    );
  }
}
