import 'package:flutter/material.dart';
import 'package:informative_app/Screens/LoginPage.dart';
import 'package:informative_app/sqflite/ModelClass.dart';
import 'package:lottie/lottie.dart';
import '../Widgets/TextField.dart';
import '../sqflite/dbHelper.dart';

class regesterPage extends StatefulWidget {
  const regesterPage({Key? key}) : super(key: key);

  @override
  State<regesterPage> createState() => _regesterPageState();
}

class _regesterPageState extends State<regesterPage> {
  var DbHelper;

  final fullname = TextEditingController();

  final email = TextEditingController();

  final password = TextEditingController();

  final mobile = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DbHelper = dbHelper();
  }

  signUp() async {
    var name = fullname.text;
    var em = email.text;
    var pass = password.text;
    var mob = mobile.text;

    ModelClass model =
        ModelClass(fullName: name, email: em, password: pass, mobile: mob);
    await DbHelper.saveData(model).then((UserData) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Registered Successfully'),
        duration: Duration(seconds: 3),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Lottie.asset('assets/animations/signup.json',
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
                            "Create New Account",
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
                                    controller: fullname,
                                    icon: Icon(Icons.person_add_alt_1_outlined,
                                        color: Colors.lightBlue),
                                    label: 'Full Name ',
                                    obs: false),
                                SizedBox(
                                  height: 20,
                                ),
                                textField(
                                    controller: email,
                                    icon: Icon(Icons.email_outlined,
                                        color: Colors.lightBlue),
                                    label: 'Email',
                                    obs: false),
                                SizedBox(
                                  height: 20,
                                ),
                                textField(
                                  controller: password,
                                  icon: Icon(
                                    Icons.phone_android_outlined,
                                    color: Colors.lightBlue,
                                  ),
                                  label: 'Enter New Password',
                                  obs: false,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                textField(
                                  controller: mobile,
                                  label: 'Mobile Number',
                                  icon: Icon(
                                    Icons.lock_open_rounded,
                                    color: Colors.lightBlue,
                                  ),
                                  obs: false,
                                ),
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
                                          onPressed: signUp,
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
                                      Expanded(
                                        child: Text(
                                          'Are you Having an Account?',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800),
                                          // maxLines: 1,
                                          // overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return LoginPage();
                                          }));
                                        },
                                        child: Expanded(
                                          child: SizedBox(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.3,
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Text(
                                                "Login Here",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 19,
                                                    color: Colors.lightBlue),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
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
