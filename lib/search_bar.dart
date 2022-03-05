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
  final query = TextEditingController();

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
          SizedBox(
            height: 24,
          ),
          _searchButtons(),
        ],
      ),
    );
  }

  Widget _searchArea(Size size) {
    return SizedBox(
      width: size.width * 0.4,
      child: TextFormField(
          controller: query,
          onFieldSubmitted: (query) {
            _search();
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

  Widget _searchButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _button("Google Search", _search),
        const SizedBox(width: 12),
        _button("I'm feeling lucky", () {})
      ],
    );
  }

  Widget _button(String text, Function cb) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        color: searchColor,
        onPressed: () {
          cb();
        },
        child: Text(
          text,
          style: TextStyle(color: primaryColor),
        ));
  }

  void _search() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SearchScreen(searchQuery: query.text, start: '0')));
  }
}
