import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  var ImageList = [
    "assets/Images/offer.jpeg",
    "assets/image/vegetables.jpeg",
    "assets/image/fruits.jpeg",
    "assets/image/exotic.jpeg",
    "assets/image/fresh mix.jpeg",
    "assets/image/Nutrition plants.jpeg",
    "assets/image/new.jpeg",
    "assets/image/salads.jpeg",
    "assets/image/farm fresh zone.jpg",
  ];
  var names = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavours",
    "Gourmet Salads"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 22),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4),
      itemBuilder: (context, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                child: Image(
                  image: AssetImage(ImageList[index]),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 4,
                child: Text(
                  names[index],
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
              )
            ],
          ),
        );
      },
      itemCount: ImageList.length,
    );
  }
}
