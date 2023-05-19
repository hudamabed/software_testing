import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool _passwordVisible;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/Ima4.png',
              fit: BoxFit.cover, width: double.infinity),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Center(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Text(
                              'New account',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: const Color(0xFF23203F)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            Row(
                              children:  [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset('images/im.jpg')),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text("Full name"),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children:  [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset('images/im.jpg')),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text("Email address"),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children:  [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
                                    padding: EdgeInsets.only(right: 15),
                                    child: Image.asset('images/im.jpg')),
                                Expanded(
                                  child: TextField(
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      label: const Text("Password"),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _passwordVisible = !_passwordVisible;
                                          });
                                        },),
                                      border: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: const Color(0xFF5C6AC4),
                                  minimumSize: const Size(double.infinity, 50)),
                              child: Text(
                                "Get started",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xFF5C6AC4)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: const Color(0xFFFFFFFF),
                                  minimumSize: const Size(double.infinity, 50)),
                              child: Text(
                                "Click to sign in",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFF5C6AC4),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            )



                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    _passwordVisible =false;
  }
}
