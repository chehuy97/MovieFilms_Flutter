import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/ui/component/cell/setting/CategoryFilterBox.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<String> filterCategoryNames = <String>[];
  List<String> filterSortByNames = <String>[];
  int selectedIndex;

  void initListFilterFilms() {
    filterCategoryNames.add("Popular Movies");
    filterCategoryNames.add("Top Rate Movies");
    filterCategoryNames.add("Up Comming Movies");
    filterCategoryNames.add("Now Playing Movies");
    filterSortByNames.add("Release Date");
    filterSortByNames.add("Rating");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initListFilterFilms();
  }

  static Widget titleName(String name) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10),
      color: Color(0xffd3d3d3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  void checkedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleName("Filter"),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: filterCategoryNames.length,
          itemBuilder: (context, index) {
            return CategoryFilterBox(
              name: filterCategoryNames[index],
              isChecked: selectedIndex == index,
              index: index,
              onPress: checkedItem,
            );
          },
        ),
        titleName("Sort By"),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: filterSortByNames.length,
          itemBuilder: (context, index) {
            return CategoryFilterBox(
              name: filterCategoryNames[index],
              isChecked: false,
              index: index,
              onPress: checkedItem,
            );
          },
        ),
      ],
    );
  }
}
