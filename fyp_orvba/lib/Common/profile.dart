import 'package:flutter/material.dart';
import '../Business Screens/create_business.dart';
import '../Utils/components/Buttons.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "Profile",
          style: bold18White,
        ),
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueAccent,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: ListView(
            children:  [
              const Gap(value: 50),
              const CircleAvatar(
                radius: 120,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  radius: 115,
                ),
              ),
              const Gap(value: 20),
              Container(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: CustomTextField(controller: fNameController,)),
                    Gap(value: 20),
                    Expanded(child: CustomTextField(controller: lNameController,)),
                  ],
                ),
              ),
              const Gap(value: 20),
              CustomTextField(controller: emailController,),
              const Gap(value: 20),
              CustomTextField(controller: phoneController,),
              const Gap(value: 20),
              Container(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: CustomTextField(controller: dayController,)),
                    Gap(value: 20),
                    Expanded(child: CustomTextField(controller: monthController,)),
                    Gap(value: 20),
                    Expanded(child: CustomTextField(controller: yearController,)),
                  ],
                ),
              ),
              const Gap(value: 80),
              BorderedButton(title: "Save",),
              const Gap(value: 10),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateBusiness()));
                  },
                  child: SmoothButton(title: "Logout",)),
            ],
          ),
        )
      ]),
    );
  }
}
