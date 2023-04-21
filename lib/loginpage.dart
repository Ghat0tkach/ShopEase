import 'package:flutter/material.dart';
import 'package:project/utils/Routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(
        context,
        MyRoutes.homeRoute,
      );
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "Assets/img/undraw_Login_re_4vu2.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please write username";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }, //only for stateful
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please write Password";
                        }
                        if (value.length < 6) {
                          return "your password should be minimum of 6 length";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changebutton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                      // shape: changebutton ? BoxShape.circle : BoxShape.rectangle,
                    ),
                    child: changebutton
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
              //   child: const Text("Login"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
