// ignore_for_file: sized_box_for_whitespace

// This import statement brings in necessary libraries for Flutter.
import 'package:flutter/material.dart';

// This class represents the home screen of the app and is a StatefulWidget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// This class represents the state of the HomeScreen widget.
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the size of the device screen.
    Size size = MediaQuery.of(context).size;

    // Create a safe area to avoid overlapping with system elements (e.g., status bar).
    return SafeArea(
      child: Scaffold(
        // Create a SingleChildScrollView widget to allow scrolling when the content overflows the screen.
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Stack(
            children: [
              // Display a background image.
              // Note: Attribution for the image source is provided in a comment.
              Image.asset('assets/images/bg1.jpg'),

              // Create a column to stack widgets vertically.
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),

                  // Display a welcome message.
                  const Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Display a sign-in instruction message.
                  const Text(
                    'Sign in with your email and password to continue',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Create a card with input fields for email and password.
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height / 1.6,
                        child: Card(
                          elevation: 10,
                          margin: const EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 15,
                              ),

                              // Display "Email Address" text.
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Email Address",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 82, 25, 158)),
                                  ),
                                ),
                              ),

                              // Create an input field for email.
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 35,
                                  child: TextField(
                                    cursorColor:
                                        const Color.fromARGB(255, 82, 25, 158),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Display "Password" text.
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Password",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 25, 158)),
                                    )),
                              ),

                              // Create an input field for the password.
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Container(
                                  height: 35,
                                  child: TextField(
                                    cursorColor:
                                        const Color.fromARGB(255, 82, 25, 158),
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Display "Forgot Password" text and button.
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 25, 158)),
                                    )),
                              ),

                              // Create a "Login" button.
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                height: 40,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 82, 25, 158),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),

                              // Display a divider and "or" text.
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Divider(
                                    color: Colors.black,
                                    height: 10,
                                  ),
                                  Text('or'),
                                  Divider(
                                    height: 10,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),

                              // Display social media login options (Google and Facebook).
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                        'assets/images/google.png',
                                        fit: BoxFit.cover,
                                      )),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        fit: BoxFit.cover,
                                      )),
                                ],
                              ),

                              // Display a "Don't have an account?" text with a "Sign Up" button.
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Don't have an account? ",
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 25, 158),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
