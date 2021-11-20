import 'package:flutter/material.dart';

class custom_appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PreferredSize(
        child: ClipPath(
          clipper: WaveClip(),
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/dog-4415649_960_720.jpg"),
                      fit: BoxFit.fitWidth)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        print("noice");
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  Spacer(
                    flex: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Breeds",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Spacer(
                    flex: 7,
                  )
                ],
              )),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight - 50));
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    var standardAppBarHeight = size.height - 20;

    var curveBegControll = Offset((2 / 5) * size.width, size.height);
    var curveBegEnd = Offset(size.width / 2, size.height);

    var curveEndControll = Offset((3 / 5) * size.width, size.height);
    var curveEndLast = Offset((4 / 6) * size.width, size.height - 10);

    //Punto de inicio del appbar
    path.lineTo(0, standardAppBarHeight);

    //Primera linea hasta 2/6 de la pantalla
    path.quadraticBezierTo((1 / 5) * size.width, size.height - 30,
        (2 / 6) * size.width, size.height - 10);

    //La primera mitad de la curva en medio de la pantalla
    path.quadraticBezierTo(curveBegControll.dx, curveBegControll.dy,
        curveBegEnd.dx, curveBegEnd.dy);

    //Segunda mitad de la curva en medio del appbar
    path.quadraticBezierTo(curveEndControll.dx, curveEndControll.dy,
        curveEndLast.dx, curveEndLast.dy);

    //Curva de fin
    path.quadraticBezierTo((5 / 6) * size.width, size.height - 30, size.width,
        standardAppBarHeight);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
