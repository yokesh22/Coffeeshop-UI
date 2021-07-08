import 'package:demoapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        
          color: kBackgroundColor.withOpacity(0.93),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height: 10.0,),
                      Expanded(
                        child: Container(
                          height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: kImageBackgroundColor,
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image:AssetImage("images/profile.png") 
                                ),
                        )
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "JhonWick Ams",
                            style: TextStyle(
                              color: Color(0xffaeaeae),
                              fontSize:20.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Jhonwick@outlook.com",
                            style: TextStyle(
                              color: Color(0xffaeaeae),
                              fontSize:15.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0,),
                      Expanded(
                        child: Container(
                          width: 45.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: kBackgroundColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Icon(
                            Icons.message_rounded,
                            color: kHighLightColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextField(
                              // controller: _textEditingcontroller,
                              // focusNode: _focusNode,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,color: kHighLightColor),
                                hintText: "Search...",
                                hintStyle: TextStyle(color: Color(0xff52555a)),
                                fillColor: kImageBackgroundColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)
                                  )
                              ),
                            ),
                  ),
                  SizedBox(height: 20.0,),
                  Expanded(
                    child: ListView(
                      children: [
                        buildMenuItems(
                          menuicon: Icons.people_alt,
                          menutext: "People"
                        ),
                         buildMenuItems(
                          menuicon: Icons.favorite_rounded,
                          menutext: "Favourite"
                        ),
                         buildMenuItems(
                          menuicon: Icons.update,
                          menutext: "Updates"
                        ),
                         buildMenuItems(
                          menuicon: Icons.check_box,
                          menutext: "Your orders"
                        ),
                        Divider(
                          color: Colors.white60,
                        ),
                         buildMenuItems(
                          menuicon: Icons.notifications,
                          menutext: "Notifications"
                        ),
                         buildMenuItems(
                          menuicon: Icons.settings,
                          menutext: "Settings"
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
      ),
    );
  }
}

Widget buildMenuItems({menuicon,menutext}){
  return ListTile(
    leading: Icon(menuicon,color: kHighLightColor,size: 23.0,),
    title: Text(
      menutext,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white54
      ),
      ),
    onTap: (){},
  );
}