import 'package:flutter/material.dart';

class itemIconButton extends StatefulWidget {
  const itemIconButton({Key? key}) : super(key: key);

  @override
  _itemIconButtonState createState() => _itemIconButtonState();
}

class _itemIconButtonState extends State<itemIconButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isSelected ? Colors.red[200] : Colors.grey[400],
      child: IconButton(
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          icon: Icon(
            isSelected ? Icons.favorite : Icons.favorite_border,
            color: isSelected ? Colors.red : Colors.grey[50],
          )),
    );
  }
}
