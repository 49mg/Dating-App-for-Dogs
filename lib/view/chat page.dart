import 'package:dogs_app/controller/const.dart';
import 'package:dogs_app/controller/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  DogsAccountInfo link = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile image

                      CircleAvatar(
                        backgroundImage: Get.find<DogsImage>().image5,
                        radius: 25.5,
                      ),

                      // Chat text

                      const Text(
                        "Chat",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Notifications icon

                      const Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 30.0,
                      )
                    ],
                  ),

                  const SizedBox(height: 15.0),

                  // top Container
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text and Numbers

                          Row(
                            children: const [
                              Text(
                                "Your Matches",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.5,
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "(11)",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8.0),

                          // Dogs Account

                          Container(
                            width: width,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white,
                            ),
                            child: const DogsAccount(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24.0),

                  //Chats applications
                  const DogsChats(),
                ],
              ),
            ],
          )
        ),
      ),

      // Buttom Sections

      bottomNavigationBar: GetBuilder<ButtomBar>(
        builder: (build) {
          return BottomNavigationBar(
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple.shade700,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.deepPurple.shade700,
                ),
                label: "Heart",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.deepPurple.shade700,
                ),
                label: "Messages",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepPurple.shade700,
                ),
                label: "Settings",
              ),
            ],
            currentIndex: build.currentIndex,
            onTap: (index) {
              build.changeIndex(index);

              build.currentIndex == 0 ? Get.back() : null;
            },
          );
        },
        init: ButtomBar(),
      ),
    );
  }
}
