import 'package:flutter/material.dart';
import 'package:meeney_app/custom_widgets/custom_colors.dart';
import 'package:meeney_app/custom_widgets/custom_texts.dart';
import 'package:meeney_app/screens/custom_app_bar.dart';
import 'package:meeney_app/screens/product_listing.dart';
import 'package:meeney_app/screens/service_listing.dart';
import 'package:meeney_app/screens/suggestions.dart';
import 'package:meeney_app/screens/top_nav_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGrey,
      appBar: PreferredSize(
  preferredSize: Size.fromHeight(120.0),
  child: CustomAppBar(),
),
      body: SingleChildScrollView(
        child: Column(
          children: [
              CustomTopNav(),
              ServiceListing(),
              Suggestions(),
              SizedBox(height: 20),
              ProductListing(),
          ],
        ),
      )
      
    );
  }
}


