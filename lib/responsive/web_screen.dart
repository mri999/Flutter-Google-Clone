import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/search_bar.dart';
import 'package:google_clone/search_buttons.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        actions: [
          TextButton(
            onPressed: null,
            child: const Text('Gmail',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                )),
          ),
          TextButton(
            onPressed: null,
            child: const Text('Images',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                )),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset('assets/images/more-apps.svg'),
            color: primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: MaterialButton(
                color: Color(0xff1A73EB),
                onPressed: () {},
                child: const Text("Sign In",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                    ))),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.25),
              SearchBar(),
              SizedBox(height: 16),
              SizedBox(
                height: 16,
              ),
              SearchButtons(),
              SizedBox(
                height: 16,
              ),
            ],
          )),
    );
  }
}
