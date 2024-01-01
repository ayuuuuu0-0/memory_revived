import 'package:flutter/material.dart';
import 'package:memory_revived/Helpline_Tab/doctor.dart';
import 'package:memory_revived/Helpline_Tab/todo_list.dart';
import 'package:memory_revived/homeScreen/Clickable_image.dart';

class HelplineTab extends StatefulWidget {
  const HelplineTab({super.key});

  @override
  State<HelplineTab> createState() => _HelplineTabState();
}

class _HelplineTabState extends State<HelplineTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EDEF),
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
          "Services & Help",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 25,
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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Image.asset('assets/images/to-do.jpg'),
                title: const Text('Reminders', style: TextStyle(
                    fontFamily: 'Poppins Regular', fontSize: 20,
                    fontWeight: FontWeight.w400),),
                subtitle: const Text('Helplines'),
                trailing: InkWell(
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TodoListScreen()));},
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Image.asset('assets/images/emergency.png'),
                title: const Text('  Emergency', style: TextStyle(
                    fontFamily: 'Poppins Regular', fontSize: 20,
                    fontWeight: FontWeight.w400),),
                subtitle: const Text('   Helplines'),
                trailing: InkWell(
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    _showEmergencyModal(context);
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(
                    imagePath: 'assets/images/doc.png',
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Doctors()));
                    },
                    text: 'Doctors'
                ),
                const SizedBox(width: 5,),
                ServiceCard(
                    imagePath: 'assets/images/lab.png',
                    onTap: (){},
                    text: 'Testing Labs'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(
                    imagePath: 'assets/images/clinic.png',
                    onTap: (){},
                    text: 'Clinics'
                ),
                const SizedBox(width: 5,),
                ServiceCard(
                    imagePath: 'assets/images/pharmacy.png',
                    onTap: (){},
                    text: 'Pharmacies'
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceCard(
                    imagePath: 'assets/images/facilities.png',
                    onTap: (){},
                    text: 'Dementia Facilities'
                ),
                const SizedBox(width: 5,),
                ServiceCard(
                    imagePath: 'assets/images/insurance.png',
                    onTap: (){},
                    text: 'Insurance'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



void _showEmergencyModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Emergency Helplines in Delhi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Police: 100\nFire: 101\nAmbulance: 102\n\n'
                  'Emergency Numbers: \n'
                  '1234567890\n'
                  '9876543210\n'
                  '1112223333',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    },
  );
}
}