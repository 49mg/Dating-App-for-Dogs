import 'package:dogs_app/controller/const.dart';
import 'package:dogs_app/view/home%20page.dart';
import 'package:flutter/material.dart';
import '../controller/functions.dart';
import 'package:get/get.dart';

class OpeningPage extends StatelessWidget {
  OpeningPage({Key? key}) : super(key: key);

  final linked = Get.put(DogsImage());
  final linked2 = Get.lazyPut(() => DogsAccountInfo());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade300,
              Colors.deepPurple.shade500,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 12.0),

            // First Collections of dog picture

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image1, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image2, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image3, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image4, fit: BoxFit.cover)),
                ],
              ),
            ),

            const SizedBox(height: 35.0),

            // Second Collections of dogs picture

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image5, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image6, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image7, fit: BoxFit.cover)),
                  const SizedBox(width: 25.0),
                  DogsCard(
                      image: DecorationImage(
                          image: linked.image2, fit: BoxFit.cover)),
                ],
              ),
            ),

            const SizedBox(height: 65.0),

            // Text

            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Friends,\nLovers,\nDogs",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            //Next Buttons

            GestureDetector(
              onTap: () {
                Get.to(()=> HomePage());
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: width * 0.45,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 9,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.send,
                      color: Colors.black,
                      size: 38.8,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}