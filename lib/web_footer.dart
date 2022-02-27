import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(children: [
        _textWidget("About"),
        const SizedBox(width: 16),
        _textWidget("Advertising"),
        const SizedBox(width: 16),
        _textWidget("Business"),
        const SizedBox(width: 16),
        _textWidget("How Search Works"),
        const Spacer(),
        _textWidget("Privacy"),
        const SizedBox(width: 16),
        _textWidget("Terms"),
        const SizedBox(width: 16),
        _textWidget("Settings"),
        const SizedBox(width: 16),
      ]),
    );
  }

  Widget _textWidget(String text) {
    return MaterialButton(
        onPressed: () {},
        child: Text(text, style: TextStyle(color: Color(0xff70757a))));
  }
}
