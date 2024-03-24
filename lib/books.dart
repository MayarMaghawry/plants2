import 'package:flutter/material.dart';

class books extends StatelessWidget {
  const books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xfff0f0f0),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              " HOUSING PLANTS BOOKS",
              style: TextStyle(
                  color: Colors.teal[300],
                  fontSize: 20,fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image:const DecorationImage(
                        image: AssetImage('assets/hous/houseplants.PNG'),fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              " TOXIC PLANTS BOOKS",
              style: TextStyle(
                  color: Colors.teal[300],
                  fontSize: 20,fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image:const DecorationImage(
                        image: AssetImage('assets/toxic/toxic2.PNG'),fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              " PLANTS DISEASES BOOKS",
              style: TextStyle(
                  color: Colors.teal[300],
                  fontSize: 20,fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image:const DecorationImage(
                        image: AssetImage('assets/diseases/plantdis2.PNG'),
                        fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
