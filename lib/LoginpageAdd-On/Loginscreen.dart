import 'package:flutter/material.dart';
import 'package:mobile_project/LoginpageAdd-On/mainpage.dart';

class Loginscreen extends StatefulWidget {
  static const buttonSize = 60.0;
  static const page = '/home';
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String _string = '';
  String _password = '123456';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petshop', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),),
      ),
        body:Container(
            child: SafeArea(
                child: Center(
                    child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
                            child: Column(
                              children:  [
                                Image.asset("asset/Logo.png",width: 600,height: 600,),
                                 Padding(
                                   padding: const EdgeInsets.all(10.0),
                                   child: Text('Dogshop',style: TextStyle(fontSize : 30.0,color: Colors.black,fontWeight:FontWeight.bold),),
                                 ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton.icon(onPressed: (){
                                    Navigator.pushNamed(context,mainpage.page,);
                                  },
                                      icon:Icon(Icons.loyalty) ,
                                      label: Text('เข้าสู่เว็ปไซต์',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                                ),
                              ],
                            ),
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}