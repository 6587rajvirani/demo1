import 'package:demo1/extra/shared_preferencesScreen.dart';
import 'package:flutter/material.dart';

class NewAcount_Screen extends StatefulWidget {
  const NewAcount_Screen({Key? key}) : super(key: key);

  @override
  State<NewAcount_Screen> createState() => _NewAcount_ScreenState();
}

class _NewAcount_ScreenState extends State<NewAcount_Screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create",style: TextStyle(color: Colors.blue.shade900,fontSize: 50,fontWeight: FontWeight.bold),),
              Text("account",style: TextStyle(color: Colors.blue,fontSize: 20),),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
                child: TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    label: Text("E-mail"),
                    suffixIcon: Icon(Icons.email_outlined,color: Colors.blue.shade900,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:25,right: 25,top: 15,bottom: 15),
                child: TextField(
                  controller: txtpassword,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.lock,color: Colors.blue.shade900,),
                  ),
                ),
              ),

              InkWell(onTap: (){
                setSHR(txtemail.text, txtpassword.text , false);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success"),));
              },
                child: Container(
                  color: Colors.blue.shade600,
                  margin: EdgeInsets.all(25),
                  width: double.infinity,
                  height: 40,
                  child: Center(child: Text("Sign up",style: TextStyle(fontSize: 30,color: Colors.white),)),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?"),
                  InkWell(onTap: (){
                    Navigator.pushReplacementNamed(context, '/');
                    },
                      child: Text("Sign in",style: TextStyle(color: Colors.blue),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
