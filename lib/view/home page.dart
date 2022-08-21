import 'package:dogs_app/controller/const.dart';
import 'package:dogs_app/view/chat%20page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DogsImage linked = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              // App Bar

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Profile image

                  CircleAvatar(
                    backgroundImage: linked.image8,
                    radius: 25.5,
                  ),

                  // Location icon and Name

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // icon

                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),

                      // name

                      Text(
                        "Denver",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),

                  // Notifications icon

                  const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 30.0,
                  )
                ],
              ),

              const SizedBox(height: 42.0),

              // Page main photo

              Stack(
                children: [
                  // Dogs Images

                  Container(
                    width: width,
                    height: height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      image: DecorationImage(
                          image: linked.image5, fit: BoxFit.cover),
                    ),
                  ),

                  // top Text

                  Positioned(
                    top: 9.0,
                    right: 18.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Text and lighting icon

                        Container(
                          width: width * 0.5,
                          height: height * 0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.electric_bolt_sharp,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "Potential match",
                                style: TextStyle(fontSize: 17.5),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12.0),

                        // How mach is far Text

                        Container(
                          width: width * 0.2,
                          height: height * 0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5),
                            color: Colors.deepPurple.shade700,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "12 Km",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Bottom text (name, age, Descriptions)

                  Positioned(
                    bottom: 12.0,
                    left: 25.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text Name and Age
                        const Text(
                          "Francesco, 2 years",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0),
                        ),

                        const SizedBox(height: 3.0),

                        // Text Description
                        Text(
                          "i will be genital and passionate with my girl",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 25.0),

              // Buttons

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Dogs icon

                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.purple.shade700,
                            width: 4,
                            style: BorderStyle.solid),
                        color: Colors.red),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: Center(
                        child: Text(
                          "🐕",
                          style: TextStyle(fontSize: 26.0),
                        ),
                      ),
                    ),
                  ),

                  // Bons Icon

                  CircleAvatar(
                    backgroundColor: Colors.deepPurple.shade700,
                    radius: 40.0,
                    child: const Center(
                      child: Text(
                        "🦴",
                        style: TextStyle(fontSize: 26.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // bottom Sections

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
              
              build.currentIndex == 2? Get.to(ChatPage()): null;
            },
          );
        },
        init: ButtomBar(),
      ),
    );
  }
}
