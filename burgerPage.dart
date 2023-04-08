// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, annotate_overrides, sized_box_for_whitespace, non_constant_identifier_names, unused_element, prefer_interpolation_to_compose_strings

import 'package:app3/dashboardPage.dart';
import 'package:app3/foodTabs.dart';
import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  final imgPath, foodName, pricePerItem, heroTag;

  const BurgerPage(
      {this.imgPath, this.foodName, this.pricePerItem, this.heroTag});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DashboardPage()));
                    },
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      color: Colors.transparent,
                    )
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: const Offset(0.0, 3.0),
                      )
                    ],
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_bag),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                (widget.foodName),
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Hero(
                tag: widget.heroTag,
                child: Container(
                  height: 250,
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(widget.imgPath),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: const Offset(0.0, 5.0),
                      )
                    ],
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: const Offset(0.0, 3.0),
                          )
                        ],
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            // ignore: prefer_const_constructors
            child: Text(
              'Add to Cart',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.black,
            // ignore: prefer_const_constructors
            child: Center(
              child: const Icon(Icons.shopping_bag),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              labelStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const Tab(child: Text('FEATURED')),
                const Tab(child: Text('COMBO')),
                const Tab(child: Text('FAVORITES')),
                const Tab(child: Text('RECOMMENDED')),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 450,
            child: TabBarView(controller: tabController, children: const [
              FoodTab(),
              FoodTab(),
              FoodTab(),
              FoodTab(),
            ]),
          ),
        ],
      ),
    );
  }
}
