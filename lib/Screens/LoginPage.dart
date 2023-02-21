import 'package:flutter/material.dart';
import 'package:informative_app/HomePage.dart';
import 'package:informative_app/Screens/ForgetPage.dart';
import 'package:informative_app/Widgets/TextField.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../sqflite/dbHelper.dart';
import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  var DbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DbHelper=dbHelper();
    dd(context);

  }
  void  dd(BuildContext context)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('email');
    //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(stringValue!)));


    if(stringValue!=null)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
    //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(stringValue!)));

  }

  Login()async{
    String email=_email.text;
    String password=_password.text;

    if(email.isEmpty && password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('plz enter email and password')));
    }
    else{
      await DbHelper.getLoginUser( email, password).then((userdata)async{
        if(userdata!=null){

          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString('email', email);

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HomePage();
          }));


        }
        else{ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Invalid Email and password')));
        }
      });

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 15,
            ),
            Lottie.asset('assets/animations/login.json',
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6),
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
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Login to your Account",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 23,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            textField(
                                controller: _email,
                                icon: Icon(Icons.email_outlined,
                                    color: Colors.lightBlue),
                                label: 'Email ',
                                obs: false),
                            SizedBox(
                              height: 10,
                            ),
                            textField(
                              controller: _password,
                              icon: Icon(
                                Icons.lock_open_rounded,
                                color: Colors.lightBlue,
                              ),
                              label: 'Password',
                              obs: false,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return forgetPage();
                                    }));
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.lightBlue),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: ElevatedButton(
                                      onPressed: Login,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(fontSize: 25),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                              width: MediaQuery.of(context).size.width*0.1,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 34),
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  //SizedBox(height: 20,),
                                  Expanded(
                                    child: SizedBox(
                                      height: 50,
                                      // width: MediaQuery.of(context).size.width*0.1,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Text(
                                          'Are you new here ?',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return regesterPage();
                                      }));
                                    },
                                    child: Expanded(
                                      child: SizedBox(
                                        height: 50,
                                        width:
                                            80,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Text(
                                            "Regester here",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.lightBlue),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ])),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
