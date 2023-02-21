import 'package:flutter/material.dart';

class delhiTourPlaces extends StatelessWidget {
  String img;
  String name;
  String descripion;
  delhiTourPlaces(
      {Key? key,
      required this.img,
      required this.name,
      required this.descripion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Positioned(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                      "$img",
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          bottom: 0,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  )),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.black26,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      name,
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(descripion,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    )));
  }
}
