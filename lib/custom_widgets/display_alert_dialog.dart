import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';



void customAlertDialog(BuildContext context){
  showDialog(context: context, builder: (context){
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    
      child: Dialog(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      backgroundColor: Colors.white,
      child: Wrap(
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Image.asset('assets/images/back_icon.png')),
              )
            ],),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pageTitleText('Filter By', color: darkPurple),
                  
                ],
              ),
            ),
            Container(height: 55, margin: EdgeInsets.only(right: 20, left: 20, bottom: 10)
          ,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            boxShadow: [BoxShadow(offset: Offset(1,2), color: grey, blurRadius: 2)],
            color: Colors.white,
          ),
          child: Row(children: [
            SizedBox(width: 10),
            textNavText('Sort:  Best Match', color: darkPurple),
          ],),
          ),
            _activityTile('My activity', 'star_icon.png'),
            _activityTile('Saved', 'user_icon.png'),
            
          Container(height: 55, margin: EdgeInsets.only(right: 20, left: 20, bottom: 10)
          ,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            boxShadow: [BoxShadow(offset: Offset(1,2), color: grey, blurRadius: 2)],
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/location.png'),
              Container(height: 38,
              padding: EdgeInsets.only(left: 10),
              width: 220,
                // width: 300,
                decoration: BoxDecoration(
                  
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: prodNameText('location  |', color: darkPurple)),
                  
                ),
            ],
          ),
          ),
            
            checkboxTitle(title:'My activity',imgUrl: 'discount_deals.png'),
            checkboxTitle(title:'Saved',imgUrl: 'referal.png'),
            checkboxTitle(title:'Settings', imgUrl: 'hourglass_icon.png'),
            
            ]),
      ));
  });
}

Container _activityTile(String title, String imgUrl) {
    return Container(height: 55, margin: EdgeInsets.only(right: 20, left: 20, bottom: 10)
          ,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            boxShadow: [BoxShadow(offset: Offset(1,2), color: grey, blurRadius: 2)],
            color: Colors.white,
          ),
          child: Row(children: [
            SizedBox(width: 10),
            Image.asset('assets/images/$imgUrl'),
            SizedBox(width: 20),
            textNavText('$title', color: darkPurple),
          ],),
          );
  }


class checkboxTitle extends StatefulWidget {
  String title;
  String imgUrl;
  checkboxTitle({ Key? key, required this.title, required this.imgUrl}) : super(key: key);

  @override
  _checkboxTitleState createState() => _checkboxTitleState();
}

class _checkboxTitleState extends State<checkboxTitle> {
  bool checked = false;
  
  @override
  Widget build(BuildContext context) {
    return Container(height: 55, margin: EdgeInsets.only(right: 20, left: 20, bottom: 10)
          ,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            boxShadow: [BoxShadow(offset: Offset(1,2), color: grey, blurRadius: 2)],
            color: Colors.white,
          ),
          child: Row(children: [
            SizedBox(width: 10),
            Image.asset('assets/images/${widget.imgUrl}'),
            SizedBox(width: 20),
            textNavText('${widget.title}', color: darkPurple),
            Spacer(),
            Checkbox(
              activeColor: darkPurple,
                          value: checked,
                          onChanged: (bool? value) {
                            setState(() {
                              checked = value!;
                            });
                          },
                        ),
          ],),
          );
  }
}