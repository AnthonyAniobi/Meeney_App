import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 120, width: MediaQuery.of(context).size.width,
    
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/app_back.png'), fit: BoxFit.cover),  
      borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20)),
      color: Colors.purple),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Image.asset('assets/images/logo.png'),
              Row(children: [
                Image.asset('assets/images/bell_icon.png'),
                SizedBox(width: 20),
                Image.asset('assets/images/message_icon.png'),
              ],),
              Image.asset('assets/images/user_image.png'),
            ],),
          ),
        ],
      ),
      );
  }
}