import 'package:lapp_app/add.dart';
import 'add.dart';

class Appcon {
  List<Myconstaractor>_my = [

    Myconstaractor(
        mystring: 'عدد الكواكب فى المجموعه الشمسية هو ثمانية كواكب',
        myimage: 'images/image-1.jpg',
        mybool: true),


    Myconstaractor(
        mystring: ' القطط هى حيوانات لاحمه',
        myimage: 'images/image-2.jpg',
        mybool: true),


    Myconstaractor(
        mystring: 'الصين موجودة فى قارة افريقية',
        myimage: 'images/image-3.jpg',
        mybool: false),


    Myconstaractor(
        mystring: 'الارض مسطحه وليست كروية',
        myimage: 'images/image-4.jpg',
        mybool: false
    ),


    Myconstaractor(
        mystring: 'باستطاعة الانسان البقاء على قيد الحياة بدون اكل لحوم',
        myimage: 'images/image-5.jpg',
        mybool: true),


    Myconstaractor(
        mystring: 'الشمس تدور حول الارض والارض تدور حول القمر',
        myimage: 'images/image-6.jpg',
        mybool: false),


    Myconstaractor(
        mystring: 'ما هو الطائر الأسرع في العالم؟ النعامة',
        myimage: 'images/image-7.jpg',
        mybool: true),


    Myconstaractor(
        mystring: 'اذكر اسم السورة القرآنية التي تعدل ربع القرآن؟ سورة الكافرون',
        myimage: 'images/image-11.jpg',
        mybool: true),


    Myconstaractor(
        mystring: 'من كم لون يتكون قوس قزح؟ الجواب: 6 ألوان',
        myimage: 'images/image-9.jpg',
        mybool: false),


    Myconstaractor(
        mystring: 'السؤال: من هو الذي سمّاه رسول الله فرعون أمتها هل هو : أبو جهل.',
        myimage: 'images/image-10.jpg',
        mybool: true),

  ];
  String getstring (int mynumber){
    return _my[mynumber].mystring;
  }

  String getimage (int mynumber){
    return _my[mynumber].myimage;
  }

  bool getbool(int mynumber){
    return _my[mynumber].mybool;
  }


}