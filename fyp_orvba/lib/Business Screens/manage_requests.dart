import 'package:flutter/material.dart';

import '../Utils/components/utilities.dart';
import '../Utils/styles/textStyles.dart';

class ManageRequests extends StatelessWidget {
  const ManageRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          bottomOpacity: 1.0,
          title: Text(
            "Requests",
            style: bold18White,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.delete,
                size: 25,
                color: Colors.white,
              ),
            ),
            Gap(value: 30)
          ],
          bottom: TabBar(
            labelStyle: bold14White,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.pending_outlined), text: 'Pending'),
              Tab(icon: Icon(Icons.approval), text: 'Approved'),
              Tab(icon: Icon(Icons.check_circle_outline_rounded), text: 'Completed'),
            ],
          ),
        ),
      
        body: TabBarView(
          children: [
            PendingRequest(),
            ApprovedRequest(),
            CompletedRequest(),
          ],
        ),
      ),
    );
  }
}

class PendingRequest extends StatelessWidget {
  const PendingRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index){
      return Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xFFF0EDED), width: 1))


        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(radius: 30, backgroundColor: Colors.grey,),
            title: Text("Fahad Rasool", style: bold14Black,),
            subtitle: Text("Horizon Petroleum", style: bold14Black,),
            trailing: Text("5km",style: bold14Black,),
          ),
        ),
      );
    });
  }
}
class ApprovedRequest extends StatelessWidget {
  const ApprovedRequest({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Image(image: AssetImage("assets/rm-cartoon.png"),width: 150,
            ),
          Text("No new requests fonund", style: bold14Black,)
        ],
      );
  }
}

class CompletedRequest extends StatelessWidget {
  const CompletedRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index){
      return Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFF0EDED), width: 1))


        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(radius: 30, backgroundColor: Colors.grey,),
            title: Text("Fahad Rasool", style: bold14Black,),
            subtitle: Text("Horizon Petroleum", style: bold14Black,),
            trailing: Text("5km",style: bold14Black,),
          ),
        ),
      );
    });
  }
}



