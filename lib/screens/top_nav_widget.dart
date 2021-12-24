import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';

class CustomTopNav extends StatefulWidget {
  const CustomTopNav({ Key? key }) : super(key: key);

  @override
  _CustomTopNavState createState() => _CustomTopNavState();
}

class _CustomTopNavState extends State<CustomTopNav> {
  bool isbusiness = true;
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(height: 46,decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Image.asset('assets/images/drawer_icon.png'),
          Row(children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  isbusiness = !isbusiness;
                });
              },
              child: smallButton('Social', !isbusiness)),
            SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                setState(() {
                  isbusiness = !isbusiness;
                });
              },
              child: smallButton('Business', isbusiness)),
            
          ]),
          Image.asset('assets/images/Search.png'),
        ],),
      ),
      ),
    );
  }

  Container smallButton(String text, bool isbusiness) {
    return Container(width: 70, height: 25,
        decoration: BoxDecoration(
          color: isbusiness? grey: darkPurple,
          borderRadius: BorderRadius.circular(23)),
          child: Center(child: topNavText(text)),
          );
  }
}

class TopNavWidget extends StatelessWidget {
  bool isbusiness = true;
  
  TopNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(height: 46,decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Image.asset('assets/images/drawer_icon.png'),
          Row(children: [
            GestureDetector(
              onTap: (){},
              child: smallButton('Social', !isbusiness)),
            SizedBox(width: 10),
            GestureDetector(
              onTap: (){
                
              },
              child: smallButton('Business', isbusiness)),
            
          ]),
          Image.asset('assets/images/Search.png'),
        ],),
      ),
      ),
    );
  }

  Container smallButton(String text, bool isbusiness) {
    return Container(width: 70, height: 25,
        decoration: BoxDecoration(
          color: isbusiness? Color(0xff490057): Color(0xff949494),
          borderRadius: BorderRadius.circular(23)),
          child: Center(child: topNavText(text)),
          );
  }
}