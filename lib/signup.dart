import 'package:flutter/material.dart';
import 'package:quizeone/login.dart';

class SiginUp extends StatelessWidget {
  SiginUp({super.key});

  final TextEditingController _usernamecontroler = TextEditingController();
  final TextEditingController _passwordcontroler = TextEditingController();
  final TextEditingController _Emailcontroler = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Create Your account",
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
                          return "Please Enter Email";
                        }
                        return null;
                      },
                      controller: _Emailcontroler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 134, 14, 161),
                        ),
                        labelText: "Email",
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
                    SizedBox(height: 16.0),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Confirm Password";
                        }
                        return null;
                      },
                      controller: _passwordcontroler,
                      decoration: InputDecoration(
                        hoverColor: Colors.blueAccent,
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

                        labelText: "Confirm Password",
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
                          print("Sign Up Validated");
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),

                    Text(
                      " Or ",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 134, 14, 161),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up With Google"),
                    ),
                    SizedBox(height: 10),

                    Center(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Alredy have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    134,
                                    14,
                                    161,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
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
          ),
        ),
      ),
    );
  }
}
