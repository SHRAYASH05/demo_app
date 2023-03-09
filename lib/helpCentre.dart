import 'package:demo_app/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpCentre extends StatefulWidget {
  const HelpCentre({super.key});

  @override
  State<HelpCentre> createState() => _HelpCentreState();
}

class _HelpCentreState extends State<HelpCentre> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Color.fromRGBO(57, 48, 70, 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.chevron_left,
                          size: 30,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "24/7",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Help Centre",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Container(
                          height: 100,
                          width: 150,
                          child: Image.asset(
                            "assets/images/chat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tell us how we can help",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      "assets/images/Emoji.svg",
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "our support team is standing by at",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "your service",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Cart("assets/images/headphone.svg", "Chat",
                    "start a coversation right away!", "response time: 5 mins"),
                SizedBox(
                  height: 10,
                ),
                Cart("assets/images/message-notif.svg", "FAQs",
                    "Find answers quickly", ""),
                SizedBox(
                  height: 10,
                ),
                Cart("assets/images/sms-search.svg", "Email us",
                    "Get solutions in your inbox!", ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
