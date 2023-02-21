import 'package:flutter/material.dart';
import 'package:informative_app/UnExploredDelhi/unExploredDelhi.dart';

class SecondPage extends StatefulWidget {
  final String ttt;
  const SecondPage({Key? key, required this.ttt}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.width * 0.3,
            title: Text(
              "${widget.ttt}",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.lightBlue),
            ),
            centerTitle: true,
            backgroundColor: Colors.lightBlue[100],
            elevation: 20,
          ),
          body: widget.ttt == "Explore the City"
              ? artGalleries()
              : unExploredDelhi()
      ));
  }
}

class artGalleries extends StatelessWidget {
  artGalleries({Key? key}) : super(key: key);
  final List<String> artName = [
    "ART HERITAGE",
    "DHOOMIMAL ART GALLERY",
    "GALLERY GANESHA",
    "GALLEY ESCAPE"
  ];

  final List<String> artImg = [
    "https://www.artheritagegallery.com/wp-content/uploads/2021/09/Liminal-Worlds-8.jpg",
    "https://images.newindianexpress.com/uploads/user/imagelibrary/2021/10/16/w900X450/The_Show_Goes.jpg?w=400&dpr=2.6",
    "https://content.jdmagicbox.com/comp/delhi/a2/011pxx11.xx11.170801150623.j6a2/catalogue/ganesh-art-gallery-pitampura-delhi-arts-and-crafts-classes-9pqka5.jpg?clr=660000",
    "https://d2u3kfwd92fzu7.cloudfront.net/catalog/gallery/2556/profiles/Gallery_Espace_Nilima_Sheikh_2009.JPG"
  ];

  List<String> heritageImg = [
    "https://delhitourism.travel/images/places-to-visit/headers/agrasen-ki-baoli-delhi-entry-fee-timings-holidays-reviews-header.jpg",
    "https://ffo.gov.in/uploads/location_photos/2018/10/Azad-Hind-Gram-32.jpg",
    "https://delhitourism.travel/images/places-to-visit/headers/guru-tegh-bahadur-memorial-delhi-entry-fee-timings-holidays-reviews-header.jpg",
    "https://www.nearestmetrostation.com/wp-content/uploads/2022/11/IMG_20190510_130724.jpg"
  ];
  List<String> heritageName = [
    "AGRASEN KI BAOLI",
    "AZAD HIND GRAM",
    "GURU TEGH BAHADUR SMARAK",
    "HAUZ KHAS FORT"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            color: Color(0xffE3EEFA),
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.art_track_rounded,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Art Galleries",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 200,
              child: ListView.builder(
                  itemCount: artImg.length,
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "${artImg[index]}",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Positioned(
                                top: 15,
                                left: 15,
                                child: Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  color: Colors.black26,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${artName[index]}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ));
                  }),
            )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            color: Color(0xffE3EEFA),
            height: MediaQuery.of(context).size.width * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.art_track_rounded,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Heritage and Monuments",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 200,
              child: ListView.builder(
                  itemCount: artImg.length,
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "${heritageImg[index]}",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Positioned(
                                top: 15,
                                left: 15,
                                child: Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  color: Colors.black26,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${heritageName[index]}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ));
                  }),
            )),
          ],
        ),
      ],
    );
  }
}

//Color(0xffBEE5FCFF),

// Center(
// child: Text(
// '$ttt',

// ),

// final List<String> artName = [
//   "ART HERITAGE",
//   "DHOOMIMAL ART GALLERY",
//   "GALLERY GANESHA",
//   "GALLEY ESCAPE"
// ];

// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 209, 232, 251)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//
//     Path path0 = Path();
//     path0.moveTo(size.width*0.0033375,size.height*0.1265500);
//     path0.lineTo(size.width*0.0008250,size.height*0.1898500);
//     path0.lineTo(0,size.height*0.5000000);
//     path0.quadraticBezierTo(size.width*0.1912500,size.height*0.7354000,size.width*0.3749875,size.height*0.7516500);
//     path0.cubicTo(size.width*0.4672625,size.height*0.7745500,size.width*0.5091000,size.height*0.7803500,size.width*0.6237500,size.height*0.7500000);
//     path0.quadraticBezierTo(size.width*0.7810625,size.height*0.6983500,size.width,size.height*0.4899500);
//     path0.lineTo(size.width,0);
//     path0.lineTo(size.width*0.0016750,0);
//     path0.lineTo(0,size.height*0.1000000);
//     path0.lineTo(0,size.height*0.1369000);
//     path0.lineTo(size.width*0.0021375,size.height*0.1634000);
//     path0.lineTo(size.width*0.1887500,size.height*0.6200000);
//
//     canvas.drawPath(path0, paint0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
