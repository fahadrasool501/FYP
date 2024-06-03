import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:fyp_orvba/Customer%20Screens/search_results_details.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';


class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  double value =3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          style: const TextStyle(fontSize: 13),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, size: 20,),
            hintText: "Search",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color:  const Color(0xFFCBC6C0),)),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
            filled: true,
            fillColor: const Color(0xFFCBC6C0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color:  const Color(0xFFCBC6C0),)
                ),
          ),
        ),
            actions: const [
              Icon(Icons.shopping_cart_outlined, color: Colors.black,),
              Gap(value: 10),
              Icon(Icons.filter_alt_outlined, color: Colors.black,),
              Gap(value: 10)
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.8,
        children: List.generate(10, (index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResultDetails()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFBF8F8),
                  boxShadow: [
                    BoxShadow(offset: Offset(1,2),color: Color(0xFFE3E2E2), blurRadius: 2)
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                     const  Image(image: AssetImage("assets/mechanic.jpg")),
                     const SizedBox(height: 5,),
                      Text("Car battery issues and  other related issues",style: bold14Black,),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingStars(
                            value: value,
                            onValueChanged: (v) {
                              //
                              setState(() {
                                value = v;
                              });
                            },
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 14,
                            ),
                            starCount: 5,
                            starSize: 14,
                            valueLabelColor: const Color(0xff9b9b9b),
                            valueLabelTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                            valueLabelRadius: 10,
                            maxValue: 5,
                            starSpacing: 2,
                            maxValueVisibility: true,
                            valueLabelVisibility: false,
                            animationDuration: Duration(milliseconds: 1000),
                            valueLabelPadding:
                            const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                            valueLabelMargin: const EdgeInsets.only(right: 8),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.yellow,
                          ),
                          Text("5km",style: bold13Black)
                        ],
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                          width: double.infinity,
                          child: Text("Rs. 2000 - 5000",style: bold16Red))
                    ],
                  ),
                )
              ),
            ),
          );
        }),
      ),
    );
  }
}
