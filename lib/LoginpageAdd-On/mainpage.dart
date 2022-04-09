import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_project/Doglist/doglist.dart';
import 'package:mobile_project/LoginpageAdd-On/showdetail.dart';

class mainpage extends StatefulWidget {
  static const page = '/mainpage';
  const mainpage({Key? key}) : super(key: key);
  @override
  _mainpage createState() => _mainpage();
}
class _mainpage extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:  Text('Dogshop',style: const TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/img_13.png'),
                    fit: BoxFit.fill
                )
            ),
            child: SafeArea(
                child: Center(
                    child: Stack(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  [
                                    Image.asset("asset/Logo.png",width: 600,height: 600,),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text('Click here to Load Dogshop page',style: TextStyle(fontSize : 30.0,color: Colors.black26,fontWeight:FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 100.0),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context,Doglist.page,);
                                          },
                                          child: const Icon(
                                            Icons.pets,
                                            size: 40.0,
                                            color: Colors.white,
                                          )
                                      ),
                                    ),
                                  ]
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}