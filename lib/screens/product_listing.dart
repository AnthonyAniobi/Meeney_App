import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';

class ProductListing extends StatelessWidget {
  const ProductListing({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 278,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, pos){
            return _productCards();
          }),
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
                          Image.asset('assets/images/male_oix.png', height: 23,width: 23),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              prodNameText('Randy Hill', color:darkPurple),
                              userIdText('@randyhill', color: grey)
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 16,
                                width: 53,
                                decoration: BoxDecoration(color: darkPurple,
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(8))),
                                child: Row(children: [
                                  SizedBox(width: 5),
                                  Image.asset('assets/images/product_icon.png'),
                                  serviceText('Product'),
                                ],),
                              ),
                              businessPageText('Private Seller', color: grey),
                            ],
                          )
                        ],),
                        ),
                        SizedBox(
                           height: 192, width: 204,
                          child: Stack(
                            children: [
                              Image.asset('assets/images/shoes.png', height: 192, width: 204,
                              fit: BoxFit.cover),
                              Container(height: 192, width: 204,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.5),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        prodNameText('Vegetables and Prawns'),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          Image.asset('assets/images/location.png', width: 7, height: 7, color: Colors.white),
                                          userIdText('Jamaica'),
                                        ],)
                                      ],
                                    ),
                                    Image.asset('assets/images/bookmark_bordered.png', height: 15, width: 13, color: Colors.white),
                                    Image.asset('assets/images/back.png', height: 15, width: 15, color: Colors.white),
                                    Image.asset('assets/images/menu_icon.png', height: 15, width: 15, color: Colors.white),
                                  ],),
                                  SizedBox(height: 10),
                                ],
                              ),),
                            ],
                          ),
                        ),
                        Container(height: 43,width: 204,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 3, color: grey),
                          ],
                          color: darkPurple,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                        ),
                        child: Row(children: [
                          SizedBox(width: 10),
                          prodNameText('\$20'),
                          Spacer(),
                          Container(width: 63, height: 23, decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),color: gold,
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
                        percentNumText("Deal"),
                      ],),
                  ))
                ],
              ),
            ),
          );
  }

}