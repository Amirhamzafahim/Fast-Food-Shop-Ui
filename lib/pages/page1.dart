import 'package:flutter/material.dart';
import 'package:shopappui/model/food.dart';

class Custompage extends StatelessWidget {
  const Custompage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: 0.5 / 0.7),
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image(image: NetworkImage(foods[index].imageUrl)),
                      
                    ) ),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          foods[index].name,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              foods[index].price,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text("order now"),
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          );
        });
  }
}
