import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: (){Navigator.pop(context);},
        ),
        backgroundColor: Colors.orange,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        children: <Widget>[
          _profileList(true, false, "Edit Account"),
          _profileList(false, true, "Referal ID"),
          _profileList(false, false, "Total Foodie Funds"),
          _profileList(false, false, "Change Password"),
          _profileList(false, false, "Delete Account"),
          _profileList(false, false, "Order History"),
          _profileList(false, false, "Payment Methods"),
          _profileList(false, false, "Log out"),
          _profileList(false, false, "About Foodie"),
        ],
      ),
    );
  }

  Widget _profileList(bool isFirst, isSecond, String titleVar){
    if(isFirst){
      return Container(
        child: ListTile(
          leading: CircleAvatar(backgroundColor: Colors.orange,),
          title: Text(titleVar, style: TextStyle(fontFamily: "lgc"),),
        ),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.8, style: BorderStyle.solid,color: Colors.grey))
        ),
      );
    }else if(isSecond){
      return Container(
        child: ListTile(
          title: Text(titleVar, style: TextStyle(fontFamily: "lgc"),),
          trailing: Text("MEZUCJA", style: TextStyle(fontFamily: "lgc", fontWeight: FontWeight.w500, color: Colors.orange),),
        ),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.8, style: BorderStyle.solid,color: Colors.grey))
        ),
      );
    }else{
      return InkWell(
        onTap: (){
          if(titleVar == "Change Password"){
            _popUpShow().show();
          }
        },
        child: Container(
          child: ListTile(
            title: Text(titleVar, style: TextStyle(fontFamily: "lgc"),),
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.8, style: BorderStyle.solid,color: Colors.grey))
          ),
        ),
      );
    }

  }

  Alert _popUpShow(){
    return Alert(
      context: context,
      type: AlertType.info,
      style: AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: true,
        isOverlayTapDismiss: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 400),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.black,
          fontFamily: "lgc_bold"
        ),
      ),
      title: "Change Password",
      content: Column(
        children: <Widget>[
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey, fontFamily: "lgc"),
              suffixIcon: Icon(Icons.lock_outline, color: Colors.grey,),
              hintText: "Old Password",
            )
          ),

          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey, fontFamily: "lgc"),
                  suffixIcon: Icon(Icons.lock, color: Colors.grey),
                  hintText: "New Password",
                  fillColor: Colors.grey
              )
          ),

          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey, fontFamily: "lgc"),
                  suffixIcon: Icon(Icons.lock, color: Colors.grey),
                  hintText: "Confirm New Password"
              )
          ),
        ],
      ),
      buttons: [
        DialogButton(
          color: Colors.orange,
          onPressed: (){},
          child: Text(
            "SUBMIT",
            style: TextStyle(color: Colors.white, fontFamily: "lgc", fontSize: 20),
          ),
        )
      ]
    );
  }
}
