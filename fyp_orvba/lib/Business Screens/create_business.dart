import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Utils/components/Buttons.dart';
import '../Utils/components/containers.dart';
import '../Utils/components/controllers_class.dart';
import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';
import 'create_business.dart';

class CreateBusiness extends StatefulWidget {
  const CreateBusiness({super.key});

  @override
  State<CreateBusiness> createState() => _CreateBusinessState();
}

class _CreateBusinessState extends State<CreateBusiness> {
  List<Widget> businessWidgetList = [];
  ImagePicker imagePicker = ImagePicker();
  int counter = 0;
  XFile? image;
  Controllers? controllers;
  List<bool> selectedItems = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


  pickImage() async {
    XFile? img = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: image == null
                ? Container(
                    width: double.infinity,
                    color: const Color(0xFF3F54BE),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {
                        pickImage();
                      },
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFF5B7FFC),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    )),
                  )
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.file(
                        File(image!.path),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pickImage();
                          });
                        },
                        child: const CircleAvatar(
                            radius: 50,
                            backgroundColor: Color.fromARGB(100, 0, 0, 0),
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 50,
                            )),
                      )
                    ],
                  ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  children: [
                    const Gap(value: 20),
                    Text(
                      "Add Service Details",
                      style: bold14Black,
                      textAlign: TextAlign.center,
                    ),
                    const Gap(value: 20),
                    CustomTextField(
                      controller: titleController,
                    ),
                    const Gap(value: 20),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 4.0),
                      child: Expanded(
                          flex: 2,
                          child: CustomTextField(
                            controller:descriptionController,
                          )),
                    ),
                    const Gap(value: 10),
                    const Divider(),
                    const Gap(value: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select major Services",
                          style: bold14Black,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              for(int i=0; i<selectedItems.length; i++){
                                selectedItems[i] = true;
                              }
                            });
                          },
                          child: Text(
                            "Select All",
                            style: bold14BlueAccent,
                          ),
                        ),
                      ],
                    ),
                     GridView.count(
                       physics: NeverScrollableScrollPhysics(),
                       padding: EdgeInsets.zero,
                       shrinkWrap: true,
                       crossAxisCount: 4,
                       children: List.generate(8, (index){
                         return Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Expanded(child: GestureDetector(
                               onTap: (){
                                 setState(() {
                                   selectedItems[index] = !selectedItems[index];
                                 });
                               },
                               child: CategoryContainer(selected: selectedItems[index],))),
                         );
                       }),

                     ),

                    const Gap(value: 20),
                    Text(
                      "Your Location",
                      style: bold14Black,
                    ),
                    const Gap(value: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        Text(
                          "Gaggo mandi Burewala, Pakistan",
                          style: bold14Black,
                        ),
                      ],
                    ),
                    const Gap(value: 20),
                    SmoothButton(
                      iconData: Icons.add_circle_outline,
                      title: "add",
                    ),
                    const Gap(value: 20),
                    SmoothButton(
                      title: "Save",
                    ),
                    const Gap(value: 20),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
