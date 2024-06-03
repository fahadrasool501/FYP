import 'package:flutter/material.dart';
import 'package:fyp_orvba/Business%20Screens/create_business.dart';
import 'package:fyp_orvba/Business%20Screens/manage_requests.dart';
import 'package:fyp_orvba/Common/profile.dart';
import 'package:fyp_orvba/Utils/components/drawers.dart';
import '../Utils/components/containers.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class BusinessDashboard extends StatefulWidget {
  const BusinessDashboard({super.key});

  @override
  State<BusinessDashboard> createState() => _BusinessDashboardState();
}

class _BusinessDashboardState extends State<BusinessDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     radius: 20,
        //     backgroundImage: AssetImage("assets/profile.jpg"),
        //   ),
        // ),
        title: Text(
          "Dashboard",
          style: bold18White,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.logout,
              size: 25,
              color: Colors.white,
            ),
          ),

          Gap(value: 10)
        ],
      ),

      body: Stack(children: [
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueAccent,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: ListView(
              children: [
                const Gap(value: 50),
                Text(
                  "General Report",
                  style: bold18White,
                ),
                const Gap(value: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomGradientProgressBar(
                              first: const Color(0xFFFFC700),
                              second: const Color(0xFFFCA53E),
                              value: 0.5,
                              icon:const Icon(Icons.shopping_cart_outlined, color: Color(0xFFFFC700), size: 22,),
                            ),
                            Text(
                              "Total Sales",
                              style: bold14Black,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomGradientProgressBar(
                              first: const Color(0xFF16DF7F),
                              second:const Color(0xFF6AF6C7),
                              value: 0.9,
                              icon:const Icon(Icons.stars_outlined, color: Color(0xFF16DF7F), size: 22,),
                            ),
                            Text(
                              "Total Rating",
                              style: bold14Black,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomGradientProgressBar(
                              first: const Color(0xFFEC343F),
                              second: const Color(0xFFFEA4A9),
                              value: 0.8,
                              icon: const Icon(Icons.check_circle_outline_rounded, color: Color(0xFFEC343F), size: 22,),
                            ),
                            Text(
                              "Services Done",
                              style: bold14Black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(value: 40),
                Text(
                  "Manage Services",
                  style: bold18Black,
                ),
                const Gap(value: 20),
                GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      ServicesContainer(
                        url: "assets/rocket.png",
                        title: "Create Service",
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateBusiness()));
                        },
                      ),
                      ServicesContainer(
                        url: "assets/edit.png",
                        title: "Edit Service",
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateBusiness()));
                        },
                      ),
                      ServicesContainer(
                        url: "assets/sos.png",
                        title: "View Request",
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ManageRequests()));
                        },
                      ),
                      ServicesContainer(
                        url: "assets/info.png",
                        title: "About Me",
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                        },
                      ),
                    ])
              ],
            )),
      ]),
    );
  }
}
