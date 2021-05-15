
import 'package:news/constants.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/home/components/side_bar_container.dart';




class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Categories',
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Category(title: 'Artificial Intelligence',onPress: (){},numOfItems: 34,),
        Category(title: 'Data Science',onPress: (){},numOfItems: 34,),
        Category(title: 'BlockChain',onPress: (){},numOfItems: 4,),
        Category(title: 'Elon Musk',onPress: (){},numOfItems: 10,),
        Category(title: 'Flutter UI',onPress: (){},numOfItems: 7,),
        Category(title: 'Technology',onPress: (){},numOfItems: 7,),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback onPress;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItems,@required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
      child: TextButton(
        onPressed: onPress,
        child: Text.rich(TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(text: ' ($numOfItems)', style: TextStyle(color: kBodyTextColor))
            ])),
      ),
    );
  }
}
