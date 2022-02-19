import 'package:digital_gram/HomePage/HomePage.dart';
import 'package:digital_gram/LoginPage/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          // color: Colors.white,
          // borderRadius: BorderRadius.circular(1000),
          image: const DecorationImage(
              image: AssetImage("assets/images/bg_signin.jpg"),
              fit: BoxFit.cover),
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                color: Colors.white54,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 600,
              width: 400,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    child: const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd-rB1So-F12GjOvdduzIy6VVpL4J0JpJFmQmYtAAf5f13t67kND3jJPos0p-KJxa7NII&usqp=CAU',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // Container(child: const Icon(Icons.person)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("SIGN IN",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          // color: Colors.white,
                          letterSpacing: 1.5)),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 16),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Enter Username',
                                labelText: 'Username',
                                prefixIcon: const Icon(Icons.person),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.pinkAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                prefixIcon: const Icon(Icons.vpn_key),
                                hintText: 'Enter Password',
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: const Text("Login"),
                            // ),
                            const SizedBox(
                              height: 30,
                              child: Text(
                                "Forget Password?",
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => Get.to(
                                  const HomePage(title: "Homepage"),
                                ),
                                child: Container(
                                  child: const Center(
                                    child: Text("SIGN IN ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(" Does not have account?  "),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              child: const CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
                                ),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Or Sign Up!"),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        ),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // color: Colors.black,
                          child: const Center(
                            child: Text(
                              "SIGN UP!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
