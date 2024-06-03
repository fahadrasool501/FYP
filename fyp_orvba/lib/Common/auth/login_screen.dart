import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp_orvba/Business%20Screens/business_dashboard.dart';
import 'package:fyp_orvba/Common/auth/user_signup.dart';
import 'package:fyp_orvba/Customer%20Screens/customer_dashboard.dart';
import 'package:gap/gap.dart';
import '../../Utils/components/button.dart';
import '../../Utils/components/textbox.dart';
import '../../Utils/styles/textStyles.dart';


class userLogin extends StatefulWidget {
  bool isAdmin;
  userLogin({super.key, this.isAdmin= true});

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  final _database = FirebaseDatabase.instance.ref();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void _login() async {
    await firebaseAuth
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value){
        if(widget.isAdmin == true){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: ((context) => const BusinessDashboard())));
    }
        else{
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const CustomerDashboard())));
        }

    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Gap(100),
            const Image(image: AssetImage('assets/car.jpg')),
           const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please login to continue',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const Gap(70),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textBox(
                  text: 'Email',
                  icon: Icons.email,
                  controller: email,
                ),
                Gap(15),
                textBox(
                  text: 'Password',
                  icon: Icons.lock,
                  controller: password,
                ),
                Gap(10),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 30),
                //   child: Align(
                //       alignment: Alignment.bottomRight,
                //       child: InkWell(
                //           onTap: () {
                //           },
                //           child: const Text(
                //             'Forgot Password?',
                //             style: TextStyle(
                //                 color: Color(0xff7159E3), fontSize: 18),
                //           ))),
                // )
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Button(
                        text: 'Login',
                        onpress: () {
              
                          _login();
                        }),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?", style: style13boldBlack,),
                        Gap(2),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>userSignup()));
                          },
                          child: Text("Register now", style: style13boldBlue,)),
                      ],
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
