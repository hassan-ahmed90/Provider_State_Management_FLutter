import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_provider.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    final p= Provider.of<FavProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          InkWell(
              onTap: (){

              },
              child: Icon(Icons.favorite,color: Colors.green,)

          )
        ],
        title: Text("Favourate App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded
            (child: Consumer<FavProvider>(
            builder: (context,value,child){
              return ListView.builder(
                  itemCount: p.selectedItem.length,
                  itemBuilder: (context,index){
                    print('Alert');
                    return ListTile(
                      onTap: (){
                        value.setItem(index);
                      },
                      title: Text("Item "+index.toString()),
                      trailing: value.selectedItem.contains(index) ?Icon(Icons.favorite):Icon(Icons.favorite_border_outlined),
                    );
                  });
            },
          )
          )
        ],
      ),
    );
  }
}