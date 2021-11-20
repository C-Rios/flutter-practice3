import 'package:flutter/material.dart';
import 'package:reto3/breed_item/item_icon_button.dart';

class breed_item extends StatelessWidget {
  String imageUrl;
  String breedName;
  String desc;

  breed_item(this.imageUrl, this.breedName, this.desc);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 7),
          height: size.height * 0.12,
          width: size.width,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: CircleAvatar(
                  radius: size.width * 0.1,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ), //Foto
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      breedName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      desc,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                    // Nombre y desc
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: itemIconButton())
            ],
          ),
        ),
        Divider(
          height: 4,
          thickness: 1,
        )
      ],
    );
  }
}
