import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';

void displayModal(context){
    showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 150),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context, builder: (context){
      return Container(
        
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
        ),
        child: Wrap(
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Image.asset('assets/images/cancel_icon.png')),
              )
            ],),
            _activityTile('My activity', 'time_icon.png'),
            _activityTile('Saved', 'bookmark.png'),
            _activityTile('Settings', 'settings.png'),
            Padding(padding: EdgeInsets.only(bottom: 20),
            child: Container(
              color: grey,
              margin: EdgeInsets.symmetric(horizontal:20),
              height: 1,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pageTitleText('My Pages', color: darkPurple),
                  Container(height: 26, width: 93,
                  decoration: BoxDecoration(
                    color: darkPurple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(child: prodNameText('Create new')),
                  )
                ],
              ),
            ),
            Container(height: 26,
            margin: EdgeInsets.only(right: 20, left: 20, top:20, bottom: 20),
                  decoration: BoxDecoration(
                    
                    color: lightGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(children:[
                    SizedBox(width: 10),
                    Icon(Icons.search, color: darkPurple, size: 11),
                    SizedBox(width: 20),
                    prodNameText('Create new', color: darkPurple)]),
                  ),
            UserTile(),
            
            UserTile(),
            UserTile(),
            UserTile(),
            UserTile(),
                  
            ],
        ),
      );
    });
  }

class UserTile extends StatefulWidget {
  const UserTile({ Key? key }) : super(key: key);

  @override
  _UserTileState createState() => _UserTileState();
}


class _UserTileState extends State<UserTile> {
  
  bool _onTapped = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){setState(() {
        _onTapped = !_onTapped;
      });},
      child: Container(height: 63,
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            decoration: BoxDecoration(
              
              color: _onTapped? darkPurple: lightGrey,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(children:[
              SizedBox(width: 10),
              Image.asset('assets/images/male_profile.png', height: 43, width: 43,
              fit: BoxFit.cover),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                textNavText('Business Name'),
                prodNameText('private seller'),
              ]),
              Spacer(),
              Container(width: 27, height: 27, 
              decoration: BoxDecoration(color: _onTapped? normPurple: grey, 
              shape: BoxShape.circle),
              child: Image.asset('assets/images/pinned.png'),
              ),
              SizedBox(width: 5),
              Container(
                width: 27, height: 27, 
              decoration: BoxDecoration(color: gold, 
              shape: BoxShape.circle),
                child: Icon(Icons.edit, size: 12, color: Colors.white)),
                SizedBox(width: 5),
                ]),
            ),
    );
  }
}

  Container _activityTile(String title, String imgUrl) {
    return Container(height: 55, margin: EdgeInsets.only(right: 20, left: 20, bottom: 20)
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