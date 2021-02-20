import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  final String txtTitle;
  final Color sideColor;
  final Color roundColor;

  CardTwo({
    this.txtTitle,
    this.sideColor,
    this.roundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 170,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 3,
            color: sideColor ?? Colors.blue,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 130,
              ),
              child: Icon(
                Icons.lens,
                size: 20,
                color: roundColor,
              ),
            ),
            Text(
              txtTitle ?? "",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Column(
              children: [
                Container(
                  width: 65,
                  height: 30,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: Text('Auto'),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 80,
                  height: 30,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: Text('Manual'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
