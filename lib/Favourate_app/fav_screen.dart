import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Favourate_app/fav_page.dart';
import 'package:provider_learning/Favourate_app/fav_provider.dart';
class FavourateScreen extends StatefulWidget {
  const FavourateScreen({Key? key}) : super(key: key);

  @override
  State<FavourateScreen> createState() => _FavourateScreenState();
}

class _FavourateScreenState extends State<FavourateScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FavPage()));
      },
      child: Icon(Icons.favorite)

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

                  itemCount: 100,

                  itemBuilder: (context,index){
                    // print('Alert');

                    return ListTile(
                      onTap: (){
                        if(value.selectedItem.contains(index)){

                          value.deleItem(index);

                        }else{
                          value.setItem(index);
                        }


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

