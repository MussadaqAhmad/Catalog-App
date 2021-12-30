import 'package:first_app/utills/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Loginpage());
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset(
                "assets/images/image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(
                            () {}); // called build method again to change state
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username Cannot be Empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password Cannot be Empty";
                        } else if (value.length < 6) {
                          return "Password lenght should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveTohome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: changebutton ? 50 : 50,
                          width: 120,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          //   // shape: changebutton?
                          //   // BoxShape.circle : BoxShape.rectangle,
                          //   borderRadius:
                          //       BorderRadius.circular(changebutton ? 50 : 8),
                          // ),
                        ),
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
