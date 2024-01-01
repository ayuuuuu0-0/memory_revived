import 'package:flutter/material.dart';
import 'package:memory_revived/Community_Tab/community_Tab.dart';
import 'package:memory_revived/Helpline_Tab/Helpline_tab.dart';
import 'package:memory_revived/NewPost_Tab/NewPost_Tab.dart';
import 'package:memory_revived/Profile_Screen/Profile_Screen.dart';
import 'package:memory_revived/homeScreen/Dashboard.dart';

import '../Widgets/colo_extension.dart';
import 'Tab_bar.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = const DashBoard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewPost_Tab()));
          },
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,)
                ]),
            child: Icon(Icons.add,color: Colors.white, size: 35, ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
            ]),
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                    icon: "assets/images/home_white.png",
                    selectIcon: "assets/images/home_black.png",
                    isActive: selectTab == 0,
                    onTap: () {
                      selectTab = 0;
                      currentTab = DashBoard();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
                TabButton(
                    icon: "assets/images/hash_white.png",
                    selectIcon: "assets/images/hash_black.png",
                    isActive: selectTab == 1,
                    onTap: () {
                      selectTab = 1;
                      currentTab = CommunityTab();
                      if (mounted) {
                        setState(() {});
                      }
                    }),

                const  SizedBox(width: 40,),
                TabButton(
                    icon: "assets/images/help_white.png",
                    selectIcon: "assets/images/help_black.png",
                    isActive: selectTab == 2,
                    onTap: () {
                      selectTab = 2;
                      currentTab = const HelplineTab();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
                TabButton(
                    icon: "assets/images/profile_white.png",
                    selectIcon: "assets/images/profile_black.png",
                    isActive: selectTab == 3,
                    onTap: () {
                      selectTab = 3;
                      currentTab = const ProfileScreen();
                      if (mounted) {
                        setState(() {});
                      }
                    })
              ],
            ),
          )),
    );
  }
}