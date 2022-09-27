import 'package:demo1/json/jsonProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Firstjson_Screen extends StatefulWidget {
  const Firstjson_Screen({Key? key}) : super(key: key);

  @override
  State<Firstjson_Screen> createState() => _Firstjson_ScreenState();
}

class _Firstjson_ScreenState extends State<Firstjson_Screen> {
  var jsonproviderT;
  var jsonproviderF;
  @override
  Widget build(BuildContext context) {

    jsonproviderF = Provider.of<json_Provider>(context,listen: false);
    jsonproviderT =  Provider.of<json_Provider>(context,listen: true);

    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ElevatedButton(onPressed: (){
                jsonproviderF.jsonRead();
              }, child: Text("Cick")),

              Expanded(child: ListView.builder(
                  itemCount: jsonproviderT.finalList.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Text("${jsonproviderT.finalList[index].userid1}"),
                      title: Text("${jsonproviderT.finalList[index].id1}"),
                      subtitle: Text("${jsonproviderT.finalList[index].body1}"),
                    );
                  }

              ))
            ],
          ),

      )
    );
  }
}
