import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';


class Suggestions extends StatefulWidget {
  const Suggestions({ Key? key }) : super(key: key);

  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {

  bool _selectedListings = true;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    GestureDetector(
                    onTap: (){setState((){_selectedListings = true;});},
                    child: textNavText("Suggested Listings", color: _selectedListings? darkPurple: grey)),
                    GestureDetector(
                    onTap: (){setState((){_selectedListings = false;});},
                    child: textNavText("Suggested Pages", color: _selectedListings? grey: darkPurple)),
                  ],),
        ),
        _selectedListings? _suggestedListings(context): _suggestedPages(context),
      ],
    );
  }

  SizedBox _suggestedPages(BuildContext context) {
    return SizedBox(height: 194,width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, pos){
          return Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              width: 148,decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/woman_icon.png'),
                  textNavText('Rose Koto', color: darkPurple),
                  prodNameText('smoothly store', color: grey),
                  Container(width: 63, height: 23, decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),color: gold,
                          ),
                          child: Center(child: topNavText('Order', color: darkPurple),),
                          ),
                ],
              ),
              ),
          );
        }),
      );
  }

  SizedBox _suggestedListings(BuildContext context) {
    return SizedBox(height: 194,width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, pos){
          return Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset('assets/images/food_egg.png', width: 148, height: 129, fit: BoxFit.cover)),
                Container(
                  height: 65,
                  width: 148,decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        prodNameText('Men\'s Clothes', color: darkPurple),
                        prodNameText('Smoothly store', color: grey),
                        numLeftText('25 Orders left', color: grey),
                      ],
                    ), 
                    Image.asset('assets/images/bookmark_bordered.png', height:14, width: 11),
                  ],),
                  ),
              ],
            ),
          );
        }),
      );
  }
}