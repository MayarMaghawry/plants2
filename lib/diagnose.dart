import 'package:flutter/material.dart';

class diagnose extends StatefulWidget {
  const diagnose({super.key});

  @override
  State<diagnose> createState() => _diagnoseState();
}

class _diagnoseState extends State<diagnose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image:const DecorationImage(
                    image: AssetImage('assets/plantota.JPG'),
                  )),
            ),
            Positioned(
                bottom: -0,
                left: 145,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_a_photo,size: 45,color: Colors.teal,),
                ))
          ],
        ),
      ),
    );
  }
}
