import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/screens/profile.dart';


class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = MediaQuery.of(context).size.width;
    double defaultScreenHeight = MediaQuery.of(context).size.height;
    
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width,
                  height: ScreenUtil.instance.setHeight(145),
                  child: Padding(
                    padding: const EdgeInsets.only(top:0.0, left: 18.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "images/foodie_logo.png",
                              width: ScreenUtil.instance.setWidth(70.0),
                              height: ScreenUtil.instance.setHeight(70.0),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Container(
                              width: 8.0,
                            ),
                            IconButton(
                             icon: Icon(
                               Icons.account_circle,
                               color: Colors.white,
                             ),
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 90.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              print("your menu action here");

                            },
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.black, fontFamily: "lgc_bold", fontWeight: FontWeight.w600)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: <Widget>[
                //Ads Display Container
                Padding(
                  padding: EdgeInsets.only(top:ScreenUtil.instance.setHeight(8.0), left: ScreenUtil.instance.setWidth(8.0), right: ScreenUtil.instance.setWidth(8.0)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: ScreenUtil.instance.setHeight(190),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:ScreenUtil.instance.setWidth(8.0), right: ScreenUtil.instance.setWidth(8.0),top: ScreenUtil.instance.setHeight(12.0)),
                  child: SizedBox(
                    height: ScreenUtil.instance.setHeight(80),
                    child: Card(
                      elevation: 8.0,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            "images/img_local.png",
                            height: ScreenUtil.instance.setHeight(46.0),
                          ),
                          title: Text("Local"),
                          trailing: SizedBox(
                            width: ScreenUtil.instance.setWidth(30.0),
                            height: ScreenUtil.instance.setHeight(30.0),
                            child: FloatingActionButton(
                              onPressed: (){},
                              heroTag: "local",
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.0,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0),
                  child: SizedBox(
                    height: ScreenUtil.instance.setHeight(80.0),
                    child: Card(
                      elevation: 8.0,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            "images/img_delicacies.png",
                            height: ScreenUtil.instance.setHeight(46.0),
                          ),
                          title: Text("Delicaces"),
                          trailing: SizedBox(
                            width: ScreenUtil.instance.setWidth(30.0),
                            height: ScreenUtil.instance.setHeight(30.0),
                            child: FloatingActionButton(
                              heroTag: "delicaces",
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.0,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0),
                  child: SizedBox(
                    height: ScreenUtil.instance.setHeight(80),
                    child: Card(
                      elevation: 8.0,
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            "images/img_mk_dish.png",
                            height: ScreenUtil.instance.setHeight(46.0),
                          ),
                          title: Text("Make Your Own Dish"),
                          trailing: SizedBox(
                            width: ScreenUtil.instance.setWidth(30.0),
                            height: ScreenUtil.instance.setHeight(30.0),
                            child: FloatingActionButton(
                              heroTag: "Make Your own dish",
                              onPressed: (){},
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.0,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );

  }
}
