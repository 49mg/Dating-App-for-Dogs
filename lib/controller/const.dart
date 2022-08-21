import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DogsImage extends GetxController {
  AssetImage image1 = const AssetImage("assets/images/1.jpg");
  AssetImage image2 = const AssetImage("assets/images/2.jpg");
  AssetImage image3 = const AssetImage("assets/images/3.jpg");
  AssetImage image4 = const AssetImage("assets/images/4.jpg");
  AssetImage image5 = const AssetImage("assets/images/5.jpg");
  AssetImage image6 = const AssetImage("assets/images/6.jpeg");
  AssetImage image7 = const AssetImage("assets/images/7.jpg");
  AssetImage image8 = const AssetImage("assets/images/8.jpg");
}

class ButtomBar extends GetxController {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  changeIndex(int index) {
    _currentIndex = index;
    update();
  }
}

class DogsAccountInfo extends GetxController {

  List dogsProfileImage = const [
    AssetImage("assets/images/1.jpg"),
    AssetImage("assets/images/2.jpg"),
    AssetImage("assets/images/3.jpg"),
    AssetImage("assets/images/4.jpg"),
    AssetImage("assets/images/5.jpg"),
    AssetImage("assets/images/6.jpeg"),
    AssetImage("assets/images/7.jpg"),
    AssetImage("assets/images/8.jpg"),
  ];

  List dogsAccountName = [
    "Malina",
    "Roxy",
    "Bubble",
    "Matilda",
    "Banger",
    "Acropet",
    "Xsomia",
    "Cezar"
  ];

  List dogsAccountMessages =[
    "Hey, stylish hat, do you like to be...",
    "Sunday is better",
    "Only dry food, i have indigestion..",
    "I bark all the time when i'm home",
    "I thinks she is pretty",
    "Ohhh i give up, i hate this jobs",
    "That's so good!",
    "Tonight? where and when? ",
  ];

}
