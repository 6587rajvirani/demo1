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
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.cyanAccent, Colors.white]),
              ),
            ),
            centerTitle: false,
            title: Text("amazon",style: TextStyle(color: Colors.black),),
            actions: [
               IconButton(onPressed:(){
                 productjsonproviderF.Productejson();
               }, icon: Icon(Icons.history,color: Colors.black,)),
              PopupMenuButton(itemBuilder: (context){
                return[
                  PopupMenuItem(child: InkWell(onTap: (){
                    productjsonproviderF.filterprice();
                  },
                    child: Row(
                      children: [
                        Text("\$0-49 price",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )),
                  PopupMenuItem(child: InkWell(onTap: (){
                    productjsonproviderF.filterpricetwo();
                  },
                    child: Row(
                      children: [
                        Text("\$50-99 price",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )),
                  PopupMenuItem(child: InkWell(onTap: (){
                    productjsonproviderF.filterpricethree();
                  },
                    child: Row(
                      children: [
                        Text("\$100-Upto price",style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )),
                ];
              },icon: Icon(Icons.more_vert,color: Colors.black,),)
            ],
          ),
          drawer: Drawer(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 10, bottom: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,
                            Colors.white,
                          ]
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(onTap: () {
                                  Navigator.pop(context);
                                },
                                    child: Icon(Icons.arrow_back_ios,
                                      color: Colors.black, size: 20,)),
                              ),
                              Text("Hi, Virani Raj Ba......",
                                style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround,
                            children: [
                              Text("1234567891   |   MoblieApp Shop",
                                style: TextStyle(color: Colors.black54),),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, bottom: 8),
                            height: 1,
                            width: double.infinity,
                            color: Colors.black54,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.settings, color: Colors.black,),
                              SizedBox(width: 5,),
                              Text("Profile & Settings",
                                style: TextStyle(color: Colors.black),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: productjsonproviderT.mainfinalproducteList.length,
            itemBuilder:(context,index){
              return Container(
                margin: EdgeInsets.all(10),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(margin: EdgeInsets.all(5),height: 140,width: 125,child: Image.network('${productjsonproviderT. mainfinalproducteList[index].image}')),
                       Container(margin:EdgeInsets.all(5),child: Text("${productjsonproviderT.mainfinalproducteList[index].price}\$")),
                     ],
                   ),
                   Container(margin: EdgeInsets.only(top: 7,left: 7,right: 7),child: Text("${productjsonproviderT.mainfinalproducteList[index].title}")),
                 ],
               ),
              );}

          ),
    ));
  }
}
