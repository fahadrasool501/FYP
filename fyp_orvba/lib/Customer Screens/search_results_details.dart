import 'package:flutter/material.dart';

import '../Utils/components/Buttons.dart';
import '../Utils/components/containers.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class SearchResultDetails extends StatefulWidget {
  const SearchResultDetails({super.key});

  @override
  State<SearchResultDetails> createState() => _SearchResultDetailsState();
}

class _SearchResultDetailsState extends State<SearchResultDetails> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            style: const TextStyle(fontSize: 13),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                size: 20,
              ),
              hintText: "Search",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      const BorderSide(color: Color(0xFFCBC6C0), width: 0)),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              filled: true,
              fillColor: const Color(0xFFCBC6C0),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      const BorderSide(color: Color(0xFFCBC6C0), width: 0)),
            ),
          ),
          actions: const [
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            Gap(value: 10),
            Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
            Gap(value: 10)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const Image(image: AssetImage("assets/mechanic.jpg")),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Car battery issues and  other related issues",
                      style: bold18Black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rs. 2000 - 5000", style: bold16Red),
                        const Gap(value: 50),
                        Text("5km", style: bold13Black)
                      ],
                    ),
                    const Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(value: 10),
                        Text(
                          "This Package Includes",
                          style: bold18Black,
                        ),
                        const Gap(value: 10),
                        ListTile(
                          leading: const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(
                            "Steering bearing change",
                            style: bold13Black,
                          ),
                          trailing: Text(
                            "Rs. 300",
                            style: bold13Black,
                          ),
                          dense: true,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        ListTile(
                          leading:const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(
                            "Steering bearing change",
                            style: bold13Black,
                          ),
                          trailing: Text(
                            "Rs. 300",
                            style: bold13Black,
                          ),
                          dense: true,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(
                            "Steering bearing change",
                            style: bold13Black,
                          ),
                          trailing: Text(
                            "Rs. 300",
                            style: bold13Black,
                          ),
                          dense: true,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(
                            "Steering bearing change",
                            style: bold13Black,
                          ),
                          trailing: Text(
                            "Rs. 300",
                            style: bold13Black,
                          ),
                          dense: true,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: Text(
                            "Steering bearing change",
                            style: bold13Black,
                          ),
                          trailing: Text(
                            "Rs. 300",
                            style: bold13Black,
                          ),
                          dense: true,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          visualDensity:const VisualDensity(horizontal: 0, vertical: -4),
                        ),
                      ],
                    ),
                    const Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(value: 10),
                        Text(
                          "Ratings & Reviews",
                          style: bold18Black,
                        ),
                        CustomRating(
                          value: value,
                          size: 24,
                          valueLabel: true,
                        ),
                        const Gap(value: 20),
                        ReviewContainer(value: value,),
                        ReviewContainer(value: value,),
                        ReviewContainer(value: value,),
                        ReviewContainer(value: value,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    SmoothButton(title: "Request Service", backColor: Color(0xFFECA234),),
                    Gap(value: 10),
                    SmoothButton(title: "Track Location", backColor: Color(0xFFEC343F),),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
