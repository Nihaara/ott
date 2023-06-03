import 'dart:ui';

import 'package:flutter/material.dart';
Color yel = Color(0xffd3a32b);
Color blac = Color(0xff181014);
Color greyy = Colors.grey;
// Color greyy = Colors.grey;




TextStyle as =TextStyle(fontSize:30,color:Colors.red,fontWeight:FontWeight.bold);

///file1
class Ottmone
{
  String? image;
  String? text;


  Ottmone(this.image,this.text,);



}

List one =OttmoneDat.map((e) => Ottmone(e['image'],e['text'])).toList();

var OttmoneDat = [

  {'image':'assets/3.png','text':'Electronics'},
  {'image':'assets/2.png','text':'Electronics'},
  {'image':'assets/1.png','text':'Electronics'},


];