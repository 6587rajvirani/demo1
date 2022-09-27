import 'package:demo1/jsontwo/twoprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class newjsonhome_Screen extends StatefulWidget {
  const newjsonhome_Screen({Key? key}) : super(key: key);

  @override
  State<newjsonhome_Screen> createState() => _newjsonhome_ScreenState();
}

class _newjsonhome_ScreenState extends State<newjsonhome_Screen> {
  var newjsonproviderT;
  var newjsonproviderF;
  @override
  Widget build(BuildContext context) {

    newjsonproviderF = Provider.of<newjson_Provider>(context,listen: false);
    newjsonproviderT =  Provider.of<newjson_Provider>(context,listen: true);

    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ElevatedButton(onPressed: (){
                newjsonproviderF.jsonload();
              }, child: Text("Cick")),

              Expanded(
                  child: ListView.builder(
                    itemCount: newjsonproviderT.mainfinalList.length,
                    itemBuilder: (context,index){
                    return ListTile(
                      leading: SelectableText("${newjsonproviderT.mainfinalList[index].id1}"),
                      title: SelectableText("${newjsonproviderT.mainfinalList[index].name1}"),
                      subtitle: SelectableText("${newjsonproviderT.mainfinalList[index].address1.city1}"),
                      trailing: SelectableText("${newjsonproviderT.mainfinalList[index].address1.geo1.lat1}"),
                    );

                  }

              )
              )
            ],
          ),
        )
    );
  }
}
