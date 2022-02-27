import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/google-logo.png",
              height: size.height * 0.12,
            ),
          ),
          const SizedBox(height: 16),
          _searchArea(size),
        ],
      ),
    );
  }

  Widget _searchArea(Size size) {
    return SizedBox(
      width: size.width * 0.4,
      child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search Google or type a URL",
              prefixIcon: _prefixIcon(),
              suffixIcon: _suffixIcon(),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(Radius.circular(30))))),
    );
  }

  Widget _prefixIcon() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SvgPicture.asset(
        "assets/images/search-icon.svg",
        color: searchBorder,
        width: 1,
        height: 1,
      ),
    );
  }

  Widget _suffixIcon() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SvgPicture.asset("assets/images/mic-icon.svg"),
    );
  }
}
