

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_mobile_ui/pages/auth/sign_up_page.dart';
import 'package:linkedin_mobile_ui/pages/main/main_page/main_page.dart';
import 'package:linkedin_mobile_ui/theme/styles.dart';
import 'package:linkedin_mobile_ui/widgets/button_container_widget.dart';
import 'package:linkedin_mobile_ui/widgets/google_button_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SvgPicture.asset(
                  "assets/app_logo_svg.svg",
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Sign in", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    const Text("Stay updated on your professional world", style: TextStyle(fontSize: 14),),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email or Phone",
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Password",
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Text("Forgot password?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: linkedInBlue0077B5),),
                    const SizedBox(height: 15,),
                    ButtonContainerWidget(
                      title: "Sign In",
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const MainPage()), (route) => false);
                      },
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: linkedInMediumGrey86888A,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("or"),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: linkedInMediumGrey86888A,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    GoogleButtonContainerWidget(
                      hasIcon: true,
                      icon: SvgPicture.asset("assets/google_logo_svg.svg", width: 30, height: 30,),
                      title: "Sign In with Google",
                    ),
                    const SizedBox(height: 10,),
                    const GoogleButtonContainerWidget(
                      hasIcon: true,
                      icon: Icon(FontAwesomeIcons.apple, size: 22,),
                      title: "Sign In with Apple",
                    ),
                    const SizedBox(height: 30,),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "New to LinkedIn? ",
                          style: TextStyle(color: linkedInBlack000000, fontSize: 16),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const SignUpPage()), (route) => false,);
                              },
                              text: "Join now",
                               style: TextStyle(color: linkedInBlue0077B5, fontWeight: FontWeight.bold, fontSize: 16)
                            )
                          ]
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
