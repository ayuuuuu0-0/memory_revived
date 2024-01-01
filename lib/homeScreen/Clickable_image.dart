import 'package:flutter/material.dart';

class ClickableImageBox extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  ClickableImageBox({
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
           ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  //size: Size.fromRadius(48), // Image radius
                  child: Image.asset(imagePath,
                      width: 160,
                      height: 150,
                      fit: BoxFit.cover),
                ),
              ), //SizedBox(height: 8),
            ],
          ),
        //)
       ),
    );
  }
}

class ClickableImageBox2 extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  ClickableImageBox2({
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                //size: Size.fromRadius(48), // Image radius
                child: Image.asset(imagePath,
                    width: 220,
                    height: 150,
                    fit: BoxFit.cover),
              ),
            ), //SizedBox(height: 8),
          ],
        ),
        //)
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final String text;

  ServiceCard({
    required this.imagePath,
    required this.onTap,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    imagePath,
                    height: 100, // Adjust the height as needed
                    width: 170, // Adjust the width as needed
                  ),
                  SizedBox(height: 5),
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Poppins Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ), //SizedBox(height: 8),
          )
      ),
    );
  }
}