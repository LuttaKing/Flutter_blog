import 'package:flutter_svg/svg.dart';
import 'package:news/constants.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/home/components/side_bar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
          title: 'Search',
          child: TextField(
    onChanged: (value) {},
    decoration: InputDecoration(
      hintText: "Type Here ...",
      suffixIcon: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: SvgPicture.asset("assets/icons/feather_search.svg"),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding / 2),
        ),
        borderSide: BorderSide(color: Color(0xFFCCCCCC)),
      ),
    ),
          ),
        );
  }
}
