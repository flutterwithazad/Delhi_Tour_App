import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Widgets/TextField.dart';

class forgetPage extends StatefulWidget {
  const forgetPage({Key? key}) : super(key: key);

  @override
  State<forgetPage> createState() => _forgetPageState();
}

class _forgetPageState extends State<forgetPage> {

  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Lottie.asset('assets/animations/forget.json',
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Forget Account",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 23,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60),
                                    topRight: Radius.circular(60)),
                                color: Colors.white,
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3670/3670032.png',
                                      width: 45,
                                      height: 45,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/5968/5968534.png',
                                      width: 45,
                                      height: 45,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3955/3955024.png',
                                      width: 45,
                                      height: 45,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Colors.grey,
                                      height: 2,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                    ),
                                    Text(
                                      "OR",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                      height: 2,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                textField(
                                    controller: password,
                                    icon: Icon(Icons.person_add_alt_1_outlined,
                                        color: Colors.lightBlue),
                                    label: 'Full Name ',
                                    obs: false),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height: 45,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: ElevatedButton(
                                          onPressed: (){},
                                          child: Text(
                                            "Register Here",
                                            style: TextStyle(fontSize: 25),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 34),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Are you Having an Account?',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Login Here",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 19,
                                              color: Colors.lightBlue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ])),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
