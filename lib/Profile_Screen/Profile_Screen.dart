import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "assets/images/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Color(0xff1D1617),
            fontSize: 25,
            fontFamily: 'Poppins Semibold',
            fontWeight: FontWeight.w800,
          ),
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
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/more_btn.png",
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 85,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                        "assets/images/profileicon2.png"),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Text('Name', style: TextStyle(fontSize: 20, color: Colors.grey, fontFamily: 'Poppins Regular'),),
              const SizedBox(height: 8),
              Text(
                'Harnika Aujla', style: TextStyle(fontSize: 26, color: Colors.black, fontFamily: 'Poppins Regular'),),
              Divider(),
              const SizedBox(height: 10),
              Text('Email', style: TextStyle(fontSize: 20, color: Colors.grey, fontFamily: 'Poppins Regular'),),
              const SizedBox(height: 8),
              Text(
                'Harnika@example.com', style: TextStyle(fontSize: 26, color: Colors.black, fontFamily: 'Poppins Regular'),),
              Divider(),
              const SizedBox(height: 10),
              Text('Phone No', style: TextStyle(fontSize: 20, color: Colors.grey, fontFamily: 'Poppins Regular'),),
              const SizedBox(height: 8),
              Text(
                '6969696969', style: TextStyle(fontSize: 26, color: Colors.black, fontFamily: 'Poppins Regular'),),
              Divider(),
              const SizedBox(height: 10),
              Text('Password', style: TextStyle(fontSize: 20, color: Colors.grey, fontFamily: 'Poppins Regular'),),
              const SizedBox(height: 8),
              Text(
                '•••••••••', style: TextStyle(fontSize: 26, color: Colors.black, fontFamily: 'Poppins Regular'),),
              Divider(),
              Center(
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                    child: Text('Edit Profile', style: TextStyle(fontSize: 16, fontFamily: 'Poppins Regular'),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}