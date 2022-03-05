import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/search_screen.dart';

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
              height: size.height * 0.11,
            ),
          ),
          const SizedBox(height: 20),
          _searchArea(size),
        ],
      ),
    );
  }

  Widget _searchArea(Size size) {
    return SizedBox(
      width: size.width * 0.4,
      child: TextFormField(
          onFieldSubmitted: (query) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    SearchScreen(searchQuery: query, start: '0')));
          },
          autofocus: true,
          decoration: InputDecoration(
              hintText: "Search Google or type a URL",
              prefixIcon: _prefixIcon(),
              suffixIcon: _suffixIcon(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(Radius.circular(30))))),
    );
  }

  Widget _prefixIcon() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset(
        "assets/images/search-icon.svg",
        color: searchBorder,
      ),
    );
  }

  Widget _suffixIcon() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset("assets/images/mic-icon.svg"),
    );
  }
}
