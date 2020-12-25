import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class CategoryFilterBox extends StatefulWidget {
//   SettingItem box;
//   CategoryFilterBox({Key key, this.box}) : super(key: key);
//
//   @override
//   _CategoryFilterBoxState createState() => _CategoryFilterBoxState();
// }

// class _CategoryFilterBoxState extends State<CategoryFilterBox> {

class CategoryFilterBox extends StatelessWidget {
  final String name;
  final bool isChecked;
  final int index;
  final Function(int index) onPress;

  CategoryFilterBox(
      {Key key, this.name, this.isChecked, this.index, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1,
          color: Colors.grey,
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 15),
            ),
            isChecked
                ? Image(
                    width: 25,
                    height: 25,
                    image: AssetImage("assets/images/checked.png"))
                : Container(),
          ],
        ),
      ),
      onTap: () {
        onPress(index);
      },
    );
  }
}
