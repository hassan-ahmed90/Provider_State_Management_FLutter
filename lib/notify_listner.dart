import 'package:flutter/material.dart';
class NotfyListner extends StatelessWidget {
   NotfyListner({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateLess"),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ValueListenableBuilder(valueListenable: toggle,
              builder: (context,value,child){
            return Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffix: InkWell(
                        onTap: (){
                          toggle.value=!toggle.value;
                        },
                        child: toggle.value ? Icon(Icons.visibility):Icon(Icons.visibility_off_outlined))
                ),
                obscureText: toggle.value,

              ),
            );
              }),
         SizedBox(height: 25,),
         Center(
           child: ValueListenableBuilder(valueListenable: _counter, builder: (context,value,child){
             return Center(child: Text(_counter.value.toString(),style: TextStyle(fontSize: 25),),);
      },
         )
         )
        ]
      ) ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          _counter.value++;
          print("added");
        },
      ),
    );
  }
}
