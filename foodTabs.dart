// ignore_for_file: file_names, non_constant_identifier_names, sized_box_for_whitespace, import_of_legacy_library_into_null_safe, depend_on_referenced_packages, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatefulWidget {
  const FoodTab({Key? key}) : super(key: key);

  @override
  State<FoodTab> createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        
        _BuildListItem(
            'Delicius Hot Dog', 4.0, '6', 'assets/images/hotDog.png'),
        _BuildListItem('Cheese Pizza', 5.0, '12', 'assets/images/pizza.png'),
      ],
    ));
  }

  _BuildListItem(String foodname, rating, String price, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 210,
            child: Row(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.blueGrey),
                  child: Center(
                    child: Image.asset(
                      imgPath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodname,
                      style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRatingChanged: (v) {},
                      starCount: rating.toInt(),
                      rating: rating,
                      color: Colors.amber,
                      borderColor: Colors.grey.withOpacity(0.3),
                      size: 15,
                      spacing: 0,
                    ),
                    Row(
                      children:  <Widget>[
                        Text(
                          '\$ '+ price,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 3.0,
                        ),
                        // ignore: prefer_const_constructors
                        // Text(
                        //   '\$' + price,
                        //   // ignore: prefer_const_constructors
                        //   style: TextStyle(
                        //     fontStyle: FontStyle.normal,
                        //     fontWeight: FontWeight.normal,
                        //     fontSize: 17,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          FloatingActionButton(
            heroTag: foodname,
            mini: true,
            onPressed: () {},
            child: const Center(
              child: Icon(Icons.add, color: Colors.white),
            ),
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}
