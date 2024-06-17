import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/Auth/register_screen.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/HomePage/home_page_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
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
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            AppStrings.signUp,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      AppStrings.logIn,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _email,
                      cursorColor: Colors.grey,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        hintText: AppStrings.enterEmail,
                        label: const Text(
                          AppStrings.yourEmail,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _password,
                      cursorColor: Colors.grey,
                      obscureText: _isObscure,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                          hintText: AppStrings.enterPassword,
                          label: const Text(AppStrings.password),
                          labelStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppStrings.forgetPassword,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.3),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePageScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            AppStrings.logIn,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text(
                      AppStrings.orLogin,
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
                  ],
                ),
                Positioned(
                  bottom: 25,
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
        ),
      ),
    );
  }
}
