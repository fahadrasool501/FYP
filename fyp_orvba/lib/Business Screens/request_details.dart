import 'package:flutter/material.dart';
import '../Utils/components/Buttons.dart';
import '../Utils/components/containers.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class RequestDetails extends StatefulWidget {
  const RequestDetails({super.key});

  @override
  State<RequestDetails> createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
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
                    SmoothButton(title: "Approve", backColor: Color(0xFFECA234),),
                    Gap(value: 10),
                    SmoothButton(title: "Reject", backColor: Color(0xFFEC343F),),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
