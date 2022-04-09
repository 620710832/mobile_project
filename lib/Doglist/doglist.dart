import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_project/Doglist/API.dart';

import '../LoginpageAdd-On/showdetail.dart';

class Doglist extends StatefulWidget {
  static const page = '/doglist';
  const Doglist({Key? key}) : super(key: key);

  @override
  State<Doglist> createState() => _DoglistState();
}

class _DoglistState extends State<Doglist> {
    var list = [
      dogdetail(
          id: 1,
          species: 'ลูกผสมโกเด้นผสมลาบาดอร์',
          cost: '1,000',
          image: 'img_1.png',
          detail: 'จัดเป็นสุนัขที่มีความเป็นมิตรสูง ขี้เล่น ขี้ประจบ ช่างเอาอกเอาใจ เฉลียวฉลาด  มนุษยสัมพันธ์ดี ชอบเล่นน้ำ ส่วนสุนัขพันธุ์ลาบราดอร์ รีทรีฟเวอร์นั้นก็จะคล้ายคลึงกับโกลเด้น รีทรีฟเวอร์มาก แต่จะแตกต่างออกไปตรงที่สามารถเป็นสุนัขเฝ้าบ้านได้ เขาจะส่งเสียงเห่าที่ทุ้ม  ต่างกับโกลเด้น รีทรีฟเวอร์ ที่แม้ว่าจะเห่าเช่นกัน แต่กลับเป็นการเห่าต้อนรับอย่างชื่นบาน ',
      ),
      dogdetail(
        id: 2,
        species: 'อเมริกันบูลลี่',
        cost: '35,000',
        image: '2-19.jpg',
        detail: 'สุนัขสายพันธุ์นี้เกิดขึ้นในช่วงศตวรรษที่ 19 โดยผสมข้ามสายพันธุ์ระหว่าง สายพันธุ์บูลด๊อก กับ สายพันธุ์เทอร์เรีย กลายมาเป็น บูลแอนด์เทอร์เรีย (Bull-and-Terrier) ต่อมามีการอพยพ นำไปยัง สหรัฐอเมริกา จึงกลายมาเป็นที่มาของชื่อ อเมริกันพิทบูล แบ่งออกเป็นสองสายหลัก คือ สายกัด และ สายโชว์ บ้านเรานิยมเลี้ยง อเมริกันพิทบูลสายโชว์',
      ),
      dogdetail(
        id: 3,
        species: 'เฟรนช์บูลด็อก',
        cost: '4,600',
        image: 'img_2.png',
        detail: 'เป็นสุนัขพันธุ์เล็ก ต้นกำเนิดมาจากการผสมพันธุ์ของ English bulldog กับ Boston Terriers โดยการตั้งชื่อพันธุ์คำว่า French หมายถึงประเทศฝรั่งเศส ถือเป็นแหล่งกำเนิดของเฟรนช์ บูลด็อกแต่เนื่องจากคนในสหรัฐอเมริกา และประเทศอังกฤษ มักนิยมเลี้ยงสุนัขพันธุ์เฟรนช์',
      ),
      dogdetail(
        id: 4,
        species: 'ไซบีเรียนผสม',
        cost: '2,600',
        image: 'img_3.png',
        detail: 'สุนัขสายพันธุ์ไซบีเรียนฮัสกีเป็นที่นิยมในการเลี้ยงอย่างมาก เนื่องจากพวกมันทั้งหน้าตาดูดี ตาสวย แถมยังขนสวยอีก เป็นหมาที่ดูดีไปหมดซะทุกอย่างเลย',
      ),
      dogdetail(
        id: 5,
        species: 'ปอมเมอร์เรเนียน์',
        cost: '2,500',
        image: 'img_4.png',
        detail: 'เป็นสุนัขที่จัดอยู่ในกลุ่ม Toy Group แม้ว่าจะมีขนาดตัวเล็กแต่ปอมเมอเรเนียนกลับครองใจเจ้าของผู้เลี้ยงมาอย่างยาวนาน แถมยังเป็นสายพันธุ์สุดโปรดของทั้งเจ้าของอย่างเราและเชื้อพระวงศ์ชั้นสูง',
      ),
      dogdetail(
        id: 6,
        species: 'ซาลูกิ',
        cost: '87,500',
        image: 'img_5.png',
        detail: 'ซาลูกิเป็นที่รู้จักว่าสามารถอยู่เฉยๆได้เป็นเวลาหลายชั่วโมง แต่ว่าเขาก็ยังคงต้องการการออกกำลังกาย สุนัขพนธุ์นี้อุทิศตน สุภาพสำหรับเด็ก และชอบนั่งอยู่ข้างคุณ แต่ว่าเขาไม่ใช่สุนัขเพื่อการสาธิต',
      ),
      dogdetail(
        id: 7,
        species: 'อียิปต์ ฟาโรห์ ฮาวด์',
        cost: '87,500 - 227,500',
        image: 'img_6.png',
        detail: 'แม้ว่าการเชื่อฟังจะไม่ใช่บุคคลิกลักษณะของสุนัขพันธุ์นี้ แต่ฟาโรห์ ฮาวด์ มีนิสัยอ่อนไหว อดทน และสุภาพกับเด็กๆ สุนัขพันธุ์นี้จะชอบเตียงนุ่มๆ บ้านอุ่นๆ และการวิ่งประจำวัน',
      ),
      dogdetail(
        id: 8,
        species: 'ซามอยด์',
        cost: '140,000 - 385,000',
        image: 'img_7.png',
        detail: 'ซามอยด์เป็นสุนัขคู่หูที่ดีของมนุษย์ มีเสน่ห์ดึงดูดใจ และฉลาด เขาไม่เหมาะกับการถูกทิ้งไว้เพียงลำพังเป็นเวลานาน เขาเป็นสายพันธุ์ที่ดูแลง่าย มีความสุขกับอาหารที่มีคุณภาพในปริมาณที่น้อยกว่าสุนัขพันธุ์อื่น',
      ),
      dogdetail(
        id: 9,
        species: 'คาวาเลียร์ คิง ชาร์ลส์ สแปเนียล',
        cost: '35,000 - 490,000',
        image: 'img_8.png',
        detail: 'คาวาเลียร์ คิง ชาลส์ สแปเนียลเป็นสุนัขในอุดมคติสำหรับครอบครัว หรือ "empty nesters" เขามีเสน่ห์ ฉลาด และอุทิศตัว สุนัขสแปเนียลนั้นเหมาะสำหรับเด็กและเป็นเพื่อนคู่หูที่น่าพอใจ',
      ),
      dogdetail(
        id: 10,
        species: 'ทิเบตัน มาสทิฟ',
        cost: '70,000 - 245,000',
        image: 'img_9.png',
        detail: 'หนึ่งในสายพันธุ์สุนัขที่เคยมีค่าสูงเป็นอันดับต้น ๆ ของโลก เกิดเทรนด์เลี้ยงทิเบตัน มาสทิฟฟ์ จนตลาดสุนัขโตแบบฉุดไม่อยู่ มีเจ้าของสุนัขยอมจ่ายเงินหลายล้านหยวนเพื่อซื้อพวกมันมาเลี้ยง แต่เมื่อกาลเวลาผ่านไป พวกมันกลับไม่เป็นที่นิยมอีกต่อไปแล้ว และหลายพันตัวถูกทอดทิ้งไว้ในที่ราบสูงทิเบต ที่ซึ่งพวกมันกลายเป็นแหล่งแพร่กระจายโรคและโจมตีทุกอย่างที่ขวางหน้า',
      ),

    ];
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/img_13.png'),
            fit: BoxFit.fill
          )
        ),
          child: SafeArea(
            child: Center(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index){
                    var list2 = list[index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child:
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Showdetail.page,arguments: list2);
                        },
                        child:Padding(
                          padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('asset/${list2.image}',
                                  width: 200.0,
                                  height: 200.0,),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(list2.species, style: GoogleFonts.kanit(fontSize: 30.0)),
                                      ]
                                  ),
                                )
                              ]
                          ),

                        ),
                      ),
                    );
                  }
              ),
            ),
          )
      ),
    );
  }
}
