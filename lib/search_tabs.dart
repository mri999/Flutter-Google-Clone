import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  _SearchTabsState createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs> {
  Map<String, bool> selectedTab = {
    "All": true,
    "News": false,
    "Images": false,
    "Books": false,
    "Videos": false,
    "More": false
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _searchTab(Icons.search, selectedTab["All"]!, "All"),
          const SizedBox(
            width: 16,
          ),
          _searchTab(Icons.article, selectedTab["News"]!, "News"),
          const SizedBox(
            width: 16,
          ),
          _searchTab(Icons.image, selectedTab["Images"]!, "Images"),
          const SizedBox(
            width: 16,
          ),
          _searchTab(
              Icons.library_books_outlined, selectedTab["Books"]!, "Books"),
          const SizedBox(
            width: 16,
          ),
          _searchTab(Icons.video_call, selectedTab["Videos"]!, "Videos"),
          const SizedBox(
            width: 16,
          ),
          _searchTab(Icons.more_vert_rounded, selectedTab["More"]!, "More"),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }

  Widget _searchTab(IconData icon, bool isActive, String title) {
    return MaterialButton(
      onPressed: () => handleChangeTab(title),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: isActive ? blueColor : Colors.grey,
              ),
              const SizedBox(width: 6),
              Text(title,
                  style: TextStyle(color: isActive ? blueColor : Colors.grey)),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          if (isActive) _divider(),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      height: 2,
      width: 64,
      color: blueColor,
    );
  }

  void handleChangeTab(String title) {
    setState(() {
      for (String key in selectedTab.keys) {
        if (key != title) {
          selectedTab[key] = false;
        } else {
          selectedTab[key] = true;
        }
      }
    });
  }
}
