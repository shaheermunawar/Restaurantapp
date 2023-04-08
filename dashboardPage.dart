// ignore_for_file: prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore, non_constant_identifier_names, file_names, avoid_print

import 'package:app3/burgerPage.dart';
import 'package:app3/foodTabs.dart';
import 'package:app3/loginui.dart';
import 'package:flutter/material.dart';
import 'package:app3/settings.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey<ScaffoldState> dashboardKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: dashboardKey,
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/shop.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Shaheer Munawar',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Settings()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.settings),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Log Out',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 99, 0, 0),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.logout,
                            color: Color.fromARGB(255, 99, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // IconButton(
                  //   icon: Icon(Icons.menu),
                  //   onPressed: () {

                  //   },
                  // ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        dashboardKey.currentState!.openDrawer();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 60,
                              spreadRadius: 4.0,
                              offset: const Offset(0.0, 3.0),
                            )
                          ],
                          color: const Color(0xFFC6E7FE),
                          shape: BoxShape.circle,
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                            image: const AssetImage('assets/images/shop.png'),
                            fit: BoxFit.contain,
                          )),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Search for',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Your Favorite Food Item',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Search',
                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.grey.withOpacity(0.5),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                )),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              // ignore: prefer_const_constructors
              child: Text(
                'Recommended',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _BuildListItem(
                      'Special Beef Burger', 'assets/images/burger.png', '21'),
                  _BuildListItem(
                      'French Fries', 'assets/images/fries.png', '10'),
                  _BuildListItem('Donuts', 'assets/images/donut.png', '17'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
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
                )),
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
        ));
  }

  _BuildListItem(
    String foodname,
    String imgPath,
    String price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BurgerPage(
              heroTag: foodname,
              foodName: foodname,
              pricePerItem: price,
              imgPath: imgPath,
            ),
          ));
        },
        child: Container(
          height: 175,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange.withOpacity(0.6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: foodname,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      imgPath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                foodname,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
              Text(
                '\$' + price,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
