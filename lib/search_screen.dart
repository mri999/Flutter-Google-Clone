import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchHeader(size),
          ],
        ),
      ),
    );
  }

  Widget searchHeader(Size size) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Row(
        children: [
          _getLogo(),
          const SizedBox(width: 40),
          _searchBar(size),
        ],
      ),
    );
  }

  Widget _getLogo() {
    return Image.asset("assets/images/google-logo.png", height: 32, width: 94);
  }

  Widget _searchBar(Size size) {
    return Container(
      width: size.width * 0.4,
      child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: _suffixIcon(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(Radius.circular(30))))),
    );
  }

  Widget _suffixIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _clearIcon(),
        _micIcon(),
        _searchIcon(),
      ],
    );
  }

  Widget _clearIcon() {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: InkWell(
            onTap: () {
              print("cancel");
            },
            child: Icon(Icons.cancel_rounded)));
  }

  Widget _searchIcon() {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, right: 12),
      child: SvgPicture.asset(
        "assets/images/search-icon.svg",
        color: blueColor,
      ),
    );
  }

  Widget _micIcon() {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, right: 12, left: 12),
      child: SvgPicture.asset(
        "assets/images/mic-icon.svg",
      ),
    );
  }
}
