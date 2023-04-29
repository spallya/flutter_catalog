import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonChanged = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (userNmae) {
                      name = userNmae;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        buttonChanged = true;
                      });
                      await Future.delayed(const Duration(milliseconds: 350));
                      Navigator.pushNamed(context, CatalogAppRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      width: buttonChanged ? 45 : 150,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: buttonChanged ? Colors.green : Colors.indigo,
                          borderRadius:
                              BorderRadius.circular(buttonChanged ? 45 : 8)),
                      child: buttonChanged
                          ? const Icon(Icons.done, color: Colors.white)
                          : const Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                    ),
                  )
                  // ElevatedButton(
                  //     onPressed: () => {
                  //           Navigator.pushNamed(
                  //               context, CatalogAppRoutes.homeRoute)
                  //         },
                  //     style: TextButton.styleFrom(
                  //         minimumSize: const Size(150, 40)),
                  //     child: const Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
