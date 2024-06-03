import 'package:flutter/material.dart';
import 'package:fyp_orvba/Utils/components/utilities.dart';
import '../styles/textStyles.dart';


class ModeContainer extends StatelessWidget {
  final String title;
  const ModeContainer({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xffECEFF8),
        borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(offset: Offset(2, 3), blurRadius: 5, spreadRadius: -3 ,color: Color(0xffB6B4B4FF)),
          ]
      ),
      child: Center(child: Text(title,style: bold13Black,)),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  bool selected;
  CategoryContainer({super.key, this.selected = false});

  selectItem(){
    if(selected == true){
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(Icons.check_circle, color: Colors.green, size: 30,),
      );
    }
    else{
      return Text("");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              color: Color(0xffECEFF8),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(offset: Offset(2, 3), blurRadius: 5, spreadRadius: -3 ,color: Color(0xffB6B4B4FF)),
              ]

          ),
          child: Center(child: Text("1")),
        ),
        selectItem(),


      ],
    );
  }
}

class ReviewContainer extends StatelessWidget {
  double value;
  ReviewContainer({super.key, this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomRating(
              value: value,
              size: 14,
            ),
            Text(
              "Fahad Rasool",
              style: bold13Black,
            )
          ],
        ),
        Text(
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
          style: Normal13Black,
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: const Border(
                          top: BorderSide(color: Colors.grey,),
                          right: BorderSide(color: Colors.grey,),
                          bottom: BorderSide(color: Colors.grey,),
                          left: BorderSide(color: Colors.grey,),
                        )
                    ),
                    child: Image(image: AssetImage("assets/mechanic.jpg",),fit: BoxFit.fill,),
                  ),
                );
              }),
        ),
        Divider(),
      ],
    );
  }
}

class ServicesContainer extends StatelessWidget {
  String url;
  String title;
  VoidCallback? onPressed;
  ServicesContainer({super.key, required this.url, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:  Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(2, 3),
                  blurRadius: 5,
                  spreadRadius: -1,
                  color: Color(0xffB6B4B4))
            ]),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(url), width: 100,),
            Text(title,style: bold14Black,),
          ],
        ),
      ),
    );
  }
}

