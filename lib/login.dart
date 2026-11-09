import 'package:flutter/material.dart';
import 'package:quizeone/signup.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _usernamecontroler = TextEditingController();
  final TextEditingController _passwordcontroler = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 350,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 134, 14, 161),
                ),
              ),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcom Back",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Enter Your Credential to Login",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 134, 14, 161),
                      ),
                    ),

                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Username";
                        }
                        return null;
                      },
                      controller: _usernamecontroler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: const Color.fromARGB(255, 134, 14, 161),
                        ),
                        labelText: "Username",
                      ),
                    ),

                    SizedBox(height: 16.0),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        }
                        return null;
                      },
                      controller: _passwordcontroler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: const Color.fromARGB(255, 134, 14, 161),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_clock_outlined,
                          color: const Color.fromARGB(255, 134, 14, 161),
                        ),

                        labelText: "Password",
                      ),
                    ),

                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          134,
                          14,
                          161,
                        ),
                      ),

                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print("login Validated");
                        }
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 251, 251, 251),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Forget Password? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 134, 14, 161),
                      ),
                    ),

                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have an Account ?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SiginUp(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 134, 14, 161),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
