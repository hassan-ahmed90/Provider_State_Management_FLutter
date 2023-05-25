

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/example_provider.dart';
class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  // Widget build(BuildContext context) {
  //   print("BUILD");
  //   final provider = Provider.of<ExampleProvider>(context, listen: false);
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Center(child: Text("Slider Screen")),
  //     ),
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //
  //         Consumer<ExampleProvider>(builder: (context, value, child) {
  //           return Row(
  //             children: [
  //               Expanded(
  //                 child: Container(
  //                   height: 100,
  //                   decoration: BoxDecoration(
  //                       color: Colors.green.withOpacity(value.value)),
  //                   child: const Center(child: Text("Container 1")),
  //                 ),
  //               ),
  //               Expanded(
  //                 child: Container(
  //                   height: 100,
  //                   decoration: BoxDecoration(
  //                       color: Colors.red.withOpacity(value.value)),
  //                   child: const Center(child: Text("Container 2")),
  //                 ),
  //               ),
  //
  //             ],
  //           );
  //         }),
  //         Consumer<ExampleProvider>(builder: (context, value, child) {
  //           return Slider(
  //               min: 0.0,
  //               max: 1.0,
  //               value: value.value,
  //               onChanged: (double val) {
  //                 provider.setData(val);
  //               });
  //         }),
  //       ],
  //     ),
  //   );
  // }
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
