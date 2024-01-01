import 'package:flutter/material.dart';

import 'notificationrow.dart';


class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List notificationArr = [
    {"image": "assets/images/Workout1.png", "title": "Make medicine before breakfast", "time": "About 1 minutes ago"},
    {"image": "assets/images/Workout2.png", "title": "Do Office Tasks", "time": "About 3 hours ago"},
    {"image": "assets/images/Workout3.png", "title": "Finish Today's workout", "time": "About 3 hours ago"},
    {"image": "assets/images/Workout1.png", "title": "Dry laundry", "time": "29 May"},
    {"image": "assets/images/Workout2.png", "title": "Get the insurance renewed", "time": "8 April"},
    {"image": "assets/images/Workout3.png", "title": "Go for checkup", "time": "8 April"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/images/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 20,
              fontFamily: 'Poppins Semibold',
              fontWeight: FontWeight.w800),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/more_btn.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          itemBuilder: ((context, index) {
            var nObj = notificationArr[index] as Map? ?? {};
            return NotificationRow(nObj: nObj);
          }), separatorBuilder: (context, index){
        return Divider(color: Color(0xff786F72).withOpacity(0.5), height: 1, );
      }, itemCount: notificationArr.length),
    );
  }
}