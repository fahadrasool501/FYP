import 'package:flutter/material.dart';
import 'package:fyp_orvba/Customer%20Screens/search_results.dart';
import '../Utils/components/Buttons.dart';
import '../Utils/components/containers.dart';
import '../Utils/components/drawers.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class CustomerDashboard extends StatelessWidget {
  const CustomerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  MyDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:const Color(0xff3F54BE),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.notifications_active,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: 150,
          color: const Color(0xff3F54BE),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ListView(
            children: [
              const Gap(value: 18),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffECEFF8),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2, 3),
                              blurRadius: 5,
                              spreadRadius: -1,
                              color: Color(0xffB6B4B4))
                        ]),
                    height: 200,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Get Services from \n your location",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Gap(value: 10),
                          SizedBox(
                              width: 100, height: 40, child: RoundedButton(title: "Find Services",)),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: -50,
                    right: -30,
                    child: Image(
                      image: AssetImage("assets/rm-cartoon.png"),
                      height: 290
                      ,
                    ),
                  )
                ],
              ),
              const Gap(value: 20),
              Text(
                "Vehicle Type",
                style: bold14Black,
              ),
              const Gap(value: 5),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CategoryContainer(),
                      );
                    }),
              ),
              const Gap(value: 20),
              Text(
                "Vehicle Category",
                style: bold14Black,
              ),
              const Gap(value: 5),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CategoryContainer(),
                      );
                    }),
              ),
              const Gap(value: 20),
              Text(
                "Vehicle Mode",
                style: bold14Black,
              ),
              const Gap(value: 5),
              const Column(
                children: [
                  ModeContainer(
                    title: "Petrol/Diesel",
                  ),
                   Gap(value: 10),
                  ModeContainer(
                    title: "CNG",
                  ),
                   Gap(value: 10),
                  ModeContainer(
                    title: "Electric",
                  ),
                ],
              ),
              const Gap(value: 20),
              SizedBox(
                  width: 120,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140.0),
                    child: RoundedButton(title: "Next", onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResults()));
                    },),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
