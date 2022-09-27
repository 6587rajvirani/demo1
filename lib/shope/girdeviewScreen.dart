import 'package:demo1/shope/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class producte_MainScreen extends StatefulWidget {
  const producte_MainScreen({Key? key}) : super(key: key);

  @override
  State<producte_MainScreen> createState() => _producte_MainScreenState();
}

class _producte_MainScreenState extends State<producte_MainScreen> {
  var productjsonproviderT;
  var productjsonproviderF;
  @override
  void initState() {
    super.initState();
    Provider.of<Products_ProviderNew>(context,listen: false).Productejson();
  }
  @override
  Widget build(BuildContext context) {
    productjsonproviderF = Provider.of<Products_ProviderNew>(context,listen: false);
    productjsonproviderT = Provider.of<Products_ProviderNew>(context,listen: true);
    return SafeArea(
        child: Scaffold(
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: productjsonproviderT.mainfinalproducteList.length,
            itemBuilder:(context,index){
              return Container(
               child: Image.network('${productjsonproviderT.mainfinalproducteList[index].image}'),
              );}

          ),
    ));
  }
}
