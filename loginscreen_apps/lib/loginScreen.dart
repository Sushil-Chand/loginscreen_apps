import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 228, 209),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70),
              Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: height * 0.49,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(40),
                          topEnd: Radius.circular(40),
                          bottomStart: Radius.circular(40),
                          bottomEnd: Radius.circular(40))),
                  width: width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 55, right: 20, left: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Login page'),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.pink,
                                width: 2,
                              )),
                              hintText: 'EMAIL/MOBILE NUMBER',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.pink,
                                width: 2,
                              )),
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Icon(
                                Icons.mail_outlined,
                              )),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              )),
                              hintText: 'PASSWORD',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black54,
                                width: 2,
                              )),
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline_sharp,
                              )),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              'REMEMBER ME',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(
                                  5,
                                )),
                            child: Center(
                                child: TextButton(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              onPressed: () {
                                print('Click Login Button');
                              },
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 49,
                  ),
                  child: Container(
                    height: height * 0.2,
                    width: height,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(20),
                            topStart: Radius.circular(20),
                            topEnd: Radius.circular(20),
                            bottomStart: Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(" Don't have an Account",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          height: height * 0.07,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(
                                25,
                              )),
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
