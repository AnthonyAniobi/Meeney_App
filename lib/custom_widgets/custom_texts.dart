import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text robotoMedium(String text){
  return Text(
  'Roboto Mono sample',
  style: TextStyle(fontFamily: 'RobotoMono'),
);
}
// order text
Text topNavText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'Roboto', fontSize: 10, fontWeight: FontWeight.w500, color: color),
  );
}
//percentage text font
Text percentNumText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'Roboto', fontSize: 7, fontWeight: FontWeight.w500, color: color),
  );
}
// service text font
Text serviceText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'Roboto', fontSize: 6, fontWeight: FontWeight.w500, color: color),
  );
}
//discount text
Text discountText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'Roboto', fontSize: 4, fontWeight: FontWeight.w500, color: color),
  );
}
Text pageTitleText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 20, fontWeight: FontWeight.w500, color: color),
  );
}
Text textNavText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 15, fontWeight: FontWeight.w500, color: color),
  );
}
//style for the product name and user name and price
Text prodNameText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 10, fontWeight: FontWeight.w500, color: color),
  );
}
//style for the number of items left
Text numLeftText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 8, fontWeight: FontWeight.w500, color: color),
  );
}
//style for the user id text
Text userIdText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 6, fontWeight: FontWeight.w500, color: color),
  );
}

//style for the business page text
Text businessPageText(String text, {Color color=Colors.white}){
  return Text(
    text,
    style: TextStyle(fontFamily: 'WorkSans', fontSize: 5, fontWeight: FontWeight.w500, color: color),
  );
}