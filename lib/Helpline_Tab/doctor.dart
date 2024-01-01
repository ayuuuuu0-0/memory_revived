import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  final PageController _controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo, // Set page background color
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,// Set app bar color
        title: Text(
          'Doctors',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins Regular',
            fontSize: 20
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Center(child: Text('Doctors within your Area ➡', style: TextStyle(fontSize: 20, fontFamily: 'Poppins Regular', color: Colors.white),)),
          SizedBox(
          height: 600, // Card height
          child: PageView.builder(
            itemCount: 5,
            controller: _controller,
            itemBuilder: (context, index) {
              List<String> imagePath = [
                'assets/images/doc2.webp',
                'assets/images/doc2.webp',
                'assets/images/doc2.webp',
                'assets/images/doc2.webp',
                'assets/images/doc2.webp',
              ];
              List<String> text = [
                    'Dr. John Doe',
                    'Dr. John Doe',
                    'Dr. John Doe',
                    'Dr. John Doe',
                    'Dr. John Doe',
              ];
              List<String> text2 = [
                '20 years experience in Delhi',
                '20 years experience in Delhi',
                '20 years experience in Delhi',
                '20 years experience in Delhi',
                '20 years experience in Delhi',
              ];

              List<String> text3 =[
                '                 Availability: \nMonday to Friday, 9 AM - 5 PM',
                '                 Availability: \nMonday to Friday, 9 AM - 5 PM',
                '                 Availability: \nMonday to Friday, 9 AM - 5 PM',
                '                 Availability: \nMonday to Friday, 9 AM - 5 PM',
                '                 Availability: \nMonday to Friday, 9 AM - 5 PM',
              ];

              return ListenableBuilder(
                listenable: _controller,
                builder: (context, child) {
                  double factor = 1;
                  if (_controller.position.hasContentDimensions) {
                    factor = 1 - (_controller.page! - index).abs();
                  }

                  return Center(
                    child: SizedBox(
                      height: 500 + (factor * 20),
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        margin: EdgeInsets.all(16),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    imagePath[index]),
                              ),
                              SizedBox(height: 16),
                              Text(
                                text[index],
                                style: TextStyle(fontSize: 20, fontFamily: 'Poppins SemiBold'),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                text2[index],
                                style: TextStyle(fontSize: 16, fontFamily: 'Poppins Regular'),
                              ),
                              SizedBox(height: 8),
                              Text(
                                text3[index],
                                style: TextStyle(fontSize: 16, fontFamily: 'Poppins Regular'),
                              ),
                              SizedBox(height: 8),
                              Divider(thickness: 1, color: Colors.indigoAccent,),
                              SizedBox(height: 5),
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF6982E1)
                                  ),
                                  child: Text('Make Appointment', style: TextStyle(fontSize: 20, fontFamily: 'Poppins Regular'),)),
                              SizedBox(height:4),
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF6982E1)
                                  ),
                                  child: Icon(Icons.call,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
      ),
      ],
      ),
    );
  }
}
