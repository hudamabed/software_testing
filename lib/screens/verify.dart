import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: const Color(0xFFF9FAFB),
          ),
          preferredSize: Size.fromHeight(100)),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
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
                              'Verification',
                              style: GoogleFonts.nunito(
                                  fontSize: 34, color: const Color(0xFF23203F)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                                child: Text(
                                    'Please enter your phone number to receive a verification code.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 17,
                                        color: const Color(0xFF454F5B)))),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    padding: EdgeInsets.only(right: 15),
                                    child: Image.asset('images/call.png')),
                                const Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      label: Text("Phone number"),
                                      hintText: '+1 (415) 578-8033',
                                      suffixIcon: Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
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
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                              onPressed: (() {
                                Navigator.pushNamed(context, "/verify_code");
                              }),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  backgroundColor: const Color(0xFF5C6AC4),
                                  minimumSize: const Size(double.infinity, 50)),
                              child: Text(
                                "Continue",
                                style: GoogleFonts.roboto(
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
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
}
