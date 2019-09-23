import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie_app/utils/hex_color.dart';

import 'mainactivity.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _value2 = false;
  void _value2Changed(bool value) => setState(() => _value2 = value);
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
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: HexColor("000000"),
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black12.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage("images/foodie_startup_bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, top: ScreenUtil.instance.setHeight(70.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hey Welcome Back!", style: TextStyle(
                      color: Colors.white,
                      fontFamily: "lgc_bold",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top:ScreenUtil.instance.setHeight(8.0)),
                    child: Text(
                      "Log in to continue using Foodie", style: TextStyle(
                        fontFamily: "lgc",
                        color: Colors.white
                    ),
                    ),
                  ),

                  //TextField Username
                  Padding(
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setHeight(40.0),
                        left: ScreenUtil.instance.setWidth(15.0), right: ScreenUtil.instance.setWidth(15.0)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide: const BorderSide(color: Colors.white, width: 0.8),
                          ),
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white)
                          )
                      ),
                    ),
                  ),

                  //TextField password
                  Padding(
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setHeight(10.0),
                        left: ScreenUtil.instance.setWidth(15.0), right: ScreenUtil.instance.setWidth(15.0)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide: const BorderSide(color: Colors.white, width: 0.8),
                          ),
                          hintText: "Password",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.white))
                      ),
                    ),
                  ),

                  CheckboxListTile(
                    value: _value2,
                    onChanged: _value2Changed,
                    title: new Text('Show Password', style: TextStyle(color: Colors.white),),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    checkColor: Colors.white,

                  ),
                  //Row for login and register buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding:  EdgeInsets.only(top: ScreenUtil.instance.setHeight(10.0), left: ScreenUtil.instance.setWidth(15.0)),
                        child: ButtonTheme(
                          minWidth: 150,
                          child: OutlineButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MainActivity()));},
                            child: Text("LOGIN", style: TextStyle(color: Colors.white, fontFamily: "lgc"),),
                            focusColor: HexColor("FB8C00"),
                            hoverColor: HexColor("FB8C00"),
                            borderSide: const BorderSide(color: Colors.orange, width: 2.5, style: BorderStyle.solid),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: ScreenUtil.instance.setHeight(10.0), left: ScreenUtil.instance.setWidth(15.0)),
                        child: ButtonTheme(
                          minWidth: 150,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text("REGISTER", style: TextStyle(color: Colors.white, fontFamily: "lgc"),),
                            color: HexColor("FB8C00"),
                          ),
                        ),
                      )
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setHeight(10.0),
                        left: ScreenUtil.instance.setWidth(15.0), right: ScreenUtil.instance.setWidth(15.0)),
                    child: ButtonTheme(
                      minWidth: 350,
                      child: MaterialButton(
                        onPressed: (){},
                        color: HexColor("FB8C00"),
                        child: Text(
                          "FORGOT PASSWORD",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "lgc"
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],

      ),
    );
  }


}


