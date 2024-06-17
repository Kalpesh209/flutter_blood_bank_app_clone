import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/Auth/login_screen.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/HomePage/home_page_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    AppStrings.logIn,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              AppStrings.signUp,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _username,
              cursorColor: Colors.grey,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  hintText: "Enter a name",
                  label: const Text("User Name"),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _email,
              cursorColor: Colors.grey,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  hintText: "Enter a email",
                  label: const Text("Your Email"),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _password,
              cursorColor: Colors.grey,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  hintText: "Enter a password",
                  label: const Text("Password"),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _confirmpassword,
              cursorColor: Colors.grey,
              obscureText: false,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: "Enter a conform password",
                label: const Text("Conform Password"),
                labelStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePageScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text("Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
                child: Text(
              AppStrings.signUpSocial,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/google.webp",
                        height: 28,
                        width: 28,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        AppStrings.google,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 45,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/facebook.webp",
                        height: 28,
                        width: 28,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        AppStrings.facebook,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: AppStrings.bySign,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: AppStrings.term,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.and,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.privacyPolicy,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
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
