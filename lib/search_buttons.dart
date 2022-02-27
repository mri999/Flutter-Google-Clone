import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _button("Google Search"),
        const SizedBox(width: 12),
        _button("I'm feeling lucky")
      ],
    );
  }

  Widget _button(String text) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical:18),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        color: searchColor,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: primaryColor),
        ));
  }
}
