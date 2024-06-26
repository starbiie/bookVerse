import 'package:bookverse/Controller/library_controller.dart';
import 'package:bookverse/Controller/publication_controller.dart';
import 'package:bookverse/Views/library/library_home.dart';
import 'package:bookverse/Views/library/library_signin.dart';
import 'package:bookverse/Views/publications/publication_signin.dart';
import 'package:bookverse/Views/publications/publiction_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class PublicationSignUp extends StatelessWidget {
  PublicationSignUp({super.key});
  TextEditingController mailIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController publicationCntrl = TextEditingController();
  TextEditingController phoneNumCntrl = TextEditingController();
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final publicationAuthProvider =
        Provider.of<PublicationAuthenticationProvider>(context, listen: false);

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 200),
            painter: HeaderCurvedContainer(),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 170),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 55),
                    child: Container(
                      height: 380,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('F8AFAF').withOpacity(0.12),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                "SIGN UP",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lora().fontFamily,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Card(
                                  elevation: 4,
                                  child: TextField(
                                    controller: mailIDController,
                                    decoration: const InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                        filled: true,
                                        isDense: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  )),
                              Card(
                                  elevation: 4,
                                  child: TextField(
                                    controller: passwordController,
                                    decoration: const InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                        filled: true,
                                        isDense: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  )),
                              Card(
                                  elevation: 4,
                                  child: TextField(
                                    controller: publicationCntrl,
                                    decoration: const InputDecoration(
                                        hintText: "publication Name",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                        filled: true,
                                        isDense: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  )),
                              Card(
                                elevation: 4,
                                child: TextField(
                                  controller: phoneNumCntrl,
                                  decoration: const InputDecoration(
                                      hintText: "phone Number",
                                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                      filled: true,
                                      isDense: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)),
                                ),
                              ),
                              Card(
                                  elevation: 4,
                                  child: TextField(
                                    controller: locationController,
                                    decoration: const InputDecoration(
                                        hintText: "Location",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                        filled: true,
                                        isDense: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Publications_Home(),
                                      ));
                                  publicationAuthProvider.signUp(
                                      mailIDController.text,
                                      publicationCntrl.text,
                                      locationController.text,

                                      phoneNumCntrl.text,

                                      passwordController.text,
                                      context);
                                },
                                child: Card(
                                  elevation: 8,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 38,
                                    width: 106,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            offset: Offset(2, 2),
                                            blurRadius: 3,
                                            color: Colors.grey)
                                      ],
                                      color: HexColor("C0A0A0"),
                                    ),
                                    child: const Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("i have an account"),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PublicationSignIn(),
                                            ));
                                      },
                                      child: const Text(
                                        "Sign In",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Card(
        elevation: 2,
        child: Container(
          width: 270,
          height: 45,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              hintText,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: HexColor("000000").withOpacity(0.38)),
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = HexColor("C0A0A0");
    Path path = Path()
      ..relativeLineTo(0, 120)
      ..quadraticBezierTo(size.width / 2, 200.0, size.width, 120)
      ..relativeLineTo(0, -120)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
