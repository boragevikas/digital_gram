import 'package:digital_gram/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_signin.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.white54,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 400,
            height: 600,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text("Please Fill this form to create an account!"),
                    const SizedBox(
                      height: 50,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        labelText: 'First Name',
                        hintText: ' Enter your First name',
                        prefixIcon: const Icon(Icons.person),
                        // suffixIcon: Icon(Icons.keyboard_arrow_down),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        labelText: 'Last Name',
                        hintText: ' Enter your Last Name',
                        prefixIcon: const Icon(Icons.person),
                        // suffixIcon: Icon(Icons.keyboard_arrow_down),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (email) {
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(email!);
                        if (emailValid) {
                          return null;
                        } else {
                          return "please enter valid email";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        labelText: 'Email',
                        hintText: ' Enter your valid Email',
                        prefixIcon: const Icon(Icons.email),
                        // suffixIcon: Icon(Icons.keyboard_arrow_down),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      //  controller: TextEditingController(text: "Initial Text here"),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Set Password',
                        hintText: ' Password',
                        prefixIcon: const Icon(Icons.vpn_key_sharp),
                        suffixIcon: const Icon(Icons.vpn_key_outlined),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: ' Password',
                        hintText: ' Confirm Password',
                        prefixIcon: const Icon(Icons.vpn_key),
                        suffixIcon: const Icon(Icons.vpn_key_outlined),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outline_blank,
                        ),
                        Text("   I have accept the Terms and Conditions!"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        ),
                        child: Container(
                          child: const Center(
                            child: Text("SIGN UP",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            border: Border.all(
                              color: Colors.black26,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
