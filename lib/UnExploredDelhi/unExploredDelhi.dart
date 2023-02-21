import 'package:flutter/material.dart';

class unExploredDelhi extends StatelessWidget {

   unExploredDelhi({Key? key}) : super(key: key);

  List<String> unExploreName = [
    "Bhuli Bhatiyar ka Mahal",
    "Bade khan ka Gumbad",
    "Bijay Mandal",
    "Chor Minar",
    "Isa Khan Tomb",
    "Jahaz Mahal"
  ];
   List<String> unExploredImg = [
     "assets/images/1.jpg",
     "assets/images/2.jpg",
     "assets/images/3.jpg",
     "assets/images/4.jpg",
     "assets/images/5.jpg",
     "assets/images/6.jpg",
   ];


   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: unExploredImg.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(unExploredImg[index]),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.black54,),
                            height: 40,
                            width:
                            MediaQuery.of(context).size.width,

                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${unExploreName[index]}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
