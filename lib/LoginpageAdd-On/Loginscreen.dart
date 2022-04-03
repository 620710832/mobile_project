import 'package:flutter/material.dart';

import 'Lostpassword.dart';

class Loginscreen extends StatefulWidget {
  static const buttonSize = 60.0;
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
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.5),
                offset: Offset(2.0,5.0),
                blurRadius: 5.0
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.lock,
                                  size: 80,
                                  color: Colors.amber,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Enter Password',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black26
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (var i = 0; i < _string.length; i++)
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      width: 35.0,
                                      height: 35.0,
                                    ),
                                  ),
                        for (var i = 0;i < (_password.length - _string.length); i++)
                             Padding(
                               padding: const EdgeInsets.all(4.0),
                                 child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black38,
                                    shape: BoxShape.circle,
                                  ),
                              alignment: Alignment.center,
                              width: 35.0,
                              height: 35.0,
                            )
                             ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(var i = 1; i <= 3; i++) buildButton(i),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(var i = 4; i <= 6; i++) buildButton(i),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(var i = 4; i <= 6; i++) buildButton(i),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: Loginscreen.buttonSize+6,
                                height: Loginscreen.buttonSize+3,
                              ),

                          ),
                          buildButton(0),
                          buildButton(-1),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextButton(
                          child: Text('ลืมรหัสผ่าน'),
                          style: TextButton.styleFrom(
                            primary: Colors.black38,
                          ),
                          onPressed: () {
                            Navigator.push(context, 
                                MaterialPageRoute(builder: (context)=>const lostpassword()));
                          },
                        ),
                      ),
                    ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          if(num == -1){
            print('Backspace');

            setState(() {
              var length = _string.length;
              _string = _string.substring(0, length - 1);
            });
          }
          else{
            if(_string.length<6){
              setState(() {
                _string = '$_string$num';
              });
            }
          }
          if(_string==_password){

          }
          else if(_password!=_string&&_string.length==6){
            showDialog(context: context,barrierDismissible: false, builder: (BuildContext context){
              return AlertDialog(
                title: Text('Incorrect PIN'),
                content: Text('Please try again'),
                actions: [
                  ElevatedButton(
                  onPressed: ()
              {
                Navigator.of(context).pop();
              },
                  child: Text('OK'),
                  ),
                ],
              );
            },
            );
            setState(() {
              _string = "";
            });
          }
        },
        borderRadius: BorderRadius.circular(Loginscreen.buttonSize / 2),
        child: Container(
          decoration: (num == -1)
              ? null
              : BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
             alignment: Alignment.center,
             width: Loginscreen.buttonSize,
             height: Loginscreen.buttonSize,
             child: (num == -1)
                ? Icon(Icons.backspace)
                : Text(
            '$num',
            style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 16),
          ),
        ),
      ),
    );
  }
}
