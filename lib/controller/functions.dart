import 'package:dogs_app/controller/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Dogs Card
class DogsCard extends StatelessWidget {
  final DecorationImage? image;

  const DogsCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Transform.rotate(
      angle: 0.18,
      child: Container(
        width: width * 0.26,
        height: height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.8),
          border: Border.all(
            style: BorderStyle.solid,
            width: 6.5,
            color: Colors.white,
          ),
          image: image,
        ),
      ),
    );
  }
}

//Dogs account info (Picture and Name)
class DogsAccount extends StatelessWidget {
  const DogsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DogsAccountInfo link = Get.find();
    return ListView.separated(
      separatorBuilder: (_, index) {
        return const SizedBox(width: 22);
      },
      scrollDirection: Axis.horizontal,
      itemCount: link.dogsProfileImage.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            // Profile Picture

            CircleAvatar(
              backgroundImage: link.dogsProfileImage[index],
              radius: 27.5,
            ),

            const SizedBox(height: 5.5),

            // Profile Name

            Text(
              link.dogsAccountName[index],
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        );
      },
    );
  }
}

// Dogs chat (Name and Messages)
class DogsChats extends StatelessWidget {
  const DogsChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DogsAccountInfo link = Get.find();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25.0),

            // ....
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (_, index) => Row(
                children: [
                  CircleAvatar(
                    backgroundImage: link.dogsProfileImage[index],
                    radius: 28.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(link.dogsAccountName[index], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        const SizedBox(height: 7.0),
                        Text(link.dogsAccountMessages[index], style: const TextStyle(color: Colors.grey, fontSize: 15.0),),
                      ],
                    ),
                  ),
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(height: 15.0),
              itemCount: link.dogsProfileImage.length,
            ),
          ],
        ),
      ),
    );
  }
}
