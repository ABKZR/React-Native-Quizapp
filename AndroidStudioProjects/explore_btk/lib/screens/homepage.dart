import 'package:explore_btk/widgets/dropdown.dart';
import 'package:explore_btk/widgets/reuseable_heading.dart';
import 'package:explore_btk/widgets/reuseable_listviewbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Customlist {
  final String title;
  final String subTitle;

  Customlist({required this.title, required this.subTitle});
}
class HomeScreen extends StatelessWidget {
  List<Customlist> lst = [
    Customlist(
        title: 'HelpLines', subTitle: 'Emergency and\nGeneral Contacts'),
    Customlist(title: 'Shuttle Service', subTitle: 'For Daily\nTransport'),
    Customlist(title: 'Head Office', subTitle: 'For BTK projects\ndealing')
  ];
  List<Customlist> dailylst = [
    Customlist(title: 'Labbaik Drinking Water', subTitle: 'Minral Water'),
    Customlist(title: 'Milk Shop', subTitle: 'Milk, Yogurt,\nEggs'),
    Customlist(title: 'Home Plug', subTitle: 'Services At your\nDoorstep')
  ];
  List<Customlist> foodlst = [
    Customlist(title: 'Pizza Hut', subTitle: 'Pizza'),
    Customlist(title: 'Mevh bakes', subTitle: 'Pizza, Burgur, Pasta'),
    Customlist(title: 'Ginsoy', subTitle: 'Chinese restaurant'),
    Customlist(title: 'B Town', subTitle: 'Burgur')
  ];
  List<Customlist> suplst = [
    Customlist(
        title: 'Maraba Supermarket',
        subTitle: 'Grocery, Bakery, Fruit\n& Vegetables, Cosmetic'),
    Customlist(
        title: 'Imtiaz Megastore',
        subTitle: 'Grocery, Bakery, Fruit\n& Vegetables, Cosmetic, Medicine'),
    Customlist(
        title: 'Bilal Mart',
        subTitle: 'Grocery, Bakery, Fruit\n& Vegetables, Cosmetic')
  ];
  List<Customlist> constlst =[
    Customlist(title: 'Akhter Hussain Memon', subTitle: 'Gulf Infra Tech'),
    Customlist(title: 'Mengal Extate Builder', subTitle: 'House Construction, Buy and Sell')
  ];
  List<Customlist> enterlst = [
    Customlist(title: 'Danzoo', subTitle: 'Day and Night\nZoo'),
    Customlist(title: 'Eiffel Tower', subTitle: 'Lift for Top View\nPark'),
    Customlist(
        title: 'Dancing Fountain', subTitle: 'Water Dancing\nFountain'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: Container(
          color: Color(0xff0D5AA6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                height: 30,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          contentPadding: EdgeInsets.only(top: 4),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xff143B5B),
                height: 40,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DropDown(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReuseableHeadingRow(
                  heading: 'For Your Convenience', subHeading: 'See all'),
              ReuseableListviewBuilder(list: lst),
              SizedBox(
                height: 10,
              ),
              ReuseableHeadingRow(heading: 'Other Features'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  otherFeatureMethords('JOBS'),
                  otherFeatureMethords('FORUMS'),
                  otherFeatureMethords('BUY/SELL'),
                ],
              ),
              ReuseableHeadingRow(
                heading: 'Entertainment Places and Parks',
                subHeading: 'See all',
              ),
              ReuseableListviewBuilder(list: enterlst),
              SizedBox(
                height: 10,
              ),
              ReuseableHeadingRow(
                heading: 'Supermarkets and Grocery Stores',
                subHeading: 'See you all',
              ),
              ReuseableListviewBuilder(list: suplst),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/banner.jpg',
                height: 150,
                width: 500,
                fit: BoxFit.fill,
              ),
              ReuseableHeadingRow(
                heading: 'Categories',
                subHeading: 'See all',
                marginTop: 8,
              ),
              Row(
                children: [
                  categoriesContainer('Food'),
                  categoriesContainer('Education'),
                  categoriesContainer('Health \& Fitness'),
                  categoriesContainer('Transport')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  categoriesContainer('Mosque'),
                  categoriesContainer('Filling/ Charging Station'),
                  categoriesContainer('Horticulture')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ReuseableHeadingRow(
                heading: 'Fast Food and Restaurants',
                subHeading: 'See all',
              ),
              ReuseableListviewBuilder(
                list: foodlst,
                height: 54,
              ),
              SizedBox(
                height: 10,
              ),
              ReuseableHeadingRow(
                heading: 'Daily Routine Services',
                subHeading: 'See all',
              ),
              ReuseableListviewBuilder(list: dailylst),
              SizedBox(
                height: 10,
              ),
              ReuseableHeadingRow(
                heading: 'Construction & Real Estate Companies',
                subHeading: 'See all',
              ),
              ReuseableListviewBuilder(list: constlst,height: 54,)
            ],
          ),
        ),
      ),
    );
  }

  Container categoriesContainer(String category) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(left: 4,top: 8),
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
          color: Color(0xff464646), borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        category,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }

  Container otherFeatureMethords(String name) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 8),
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xff464646),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        name,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}

