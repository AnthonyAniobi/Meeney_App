import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';

class ServiceListing extends StatefulWidget {
  const ServiceListing({ Key? key }) : super(key: key);

  @override
  _ServiceListingState createState() => _ServiceListingState();
}

class _ServiceListingState extends State<ServiceListing> {
  
  int _selectedNav = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  _navTextButtons("All listing", _selectedNav, 0),
                  _navTextButtons("Products", _selectedNav, 1),
                  _navTextButtons("Services", _selectedNav, 2),
                  _navTextButtons("Jobs", _selectedNav, 3),
                  Image.asset('assets/images/filter.png'),
                ],),
              ),
              
        SizedBox(
          height: 278,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, pos){
            return _productCards();
          }),
        ),
      ],
    );
  }

  Widget _productCards() {
    return Padding(
            padding: EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 290, width: 224,
              child: Stack(

                children: [
                  Positioned(
                    left: 20,
                    top: 0,
                    child: Column(
                      children: [
                        Container(height: 43,width: 204,
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))),
                        child: Row(children: [
                          SizedBox(width: 10),
                          Image.asset('assets/images/woman_pix.png', height: 23,width: 23),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              prodNameText('Joan Lawson', color:darkPurple),
                              userIdText('joana222', color: grey)
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 16,
                                width: 53,
                                decoration: BoxDecoration(color: gold,
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(8))),
                                child: Row(children: [
                                  SizedBox(width: 5),
                                  serviceText('Service'),
                                ],),
                              ),
                              businessPageText('Business page', color: grey),
                            ],
                          )
                        ],),
                        ),
                        Image.asset('assets/images/food_collage.png', height: 192, width: 204),
                        Container(height: 43,width: 204,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 3, color: Colors.grey),
                          ],
                          color: gold,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                        ),
                        child: Row(children: [
                          SizedBox(width: 10),
                          prodNameText('\$20'),
                          Spacer(),
                          Container(width: 63, height: 23, decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),color: Colors.white,
                          ),
                          child: Center(child: topNavText('Order', color: darkPurple)),
                          ),
                          SizedBox(width: 10),
                        ],),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 10,
                    child: Container(
                    width: 35,height: 23,
                    decoration: BoxDecoration(
                      color: gold,
                      borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        percentNumText("20%"),
                        discountText("discount")
                      ],),
                  ))
                ],
              ),
            ),
          );
  }

  GestureDetector _navTextButtons(String title, int selNav, int index) {
    return GestureDetector(
                  onTap: (){setState((){_selectedNav = index;});},
                  child: textNavText(title, color: selNav == index? darkPurple: grey));
  }
}

