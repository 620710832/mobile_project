import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Doglist/API.dart';
import '../Doglist/doglist.dart';

class Showdetail extends StatefulWidget {
  static const page = 'showdetail';
  const Showdetail({Key? key}) : super(key: key);

  @override
  State<Showdetail> createState() => _ShowdetailState();
}

class _ShowdetailState extends State<Showdetail> {
  @override
  Widget build(BuildContext context) {
    var dog = ModalRoute.of(context)!.settings.arguments as dogdetail;
    return Scaffold(
      appBar: AppBar(title: Text('Detail of dog'),),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/img_13.png'),
          fit: BoxFit.fill
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset('asset/${dog.image}',height: 500,width: 500,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text('ชื่อสุนัข:  ''${dog.species}' ,style: GoogleFonts.kanit(fontSize: 20.0))),
                  Center(child: Text('ราคา: '   '${dog.cost} ''บาท',style: GoogleFonts.kanit(fontSize: 20.0))),
                  Center(child: Text('รายละเอียดของสุนัข: ''${dog.detail}',style: GoogleFonts.kanit(fontSize: 20.0))),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child:  SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(onPressed: (){},
                            icon:Icon(Icons.contact_phone) ,
                            label: Text('ติดต่อผู้รับซื้อ',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
