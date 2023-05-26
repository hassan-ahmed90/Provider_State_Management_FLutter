

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Example_App/example_provider.dart';
class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    print("Reeeee");
    final provider = Provider.of<ExampleProvider>(context,listen: false);

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Subscribe"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ExampleProvider>(builder: (context,value,child){
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.red.withOpacity(value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.green.withOpacity(value.value),
                    ),
                  )
                ],
              );

            }),
            SizedBox(height: 15,),
           Consumer<ExampleProvider>(builder: (context,value,child){
             return  Slider(
                 min: 0,
                 max: 1,
                 value: value.value, onChanged: (double val){
               provider.setData(val);
             });
           }),
          ],
        )
        ),
    );
  }
}
