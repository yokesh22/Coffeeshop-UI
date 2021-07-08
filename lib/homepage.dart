//import 'package:demoapp/detailpage.dart';
//import 'package:demoapp/detailpage.dart';
import 'package:demoapp/constants.dart';
import 'package:demoapp/drawer.dart';
import 'package:demoapp/screens/cappuccino5.dart';
import 'package:demoapp/screens/cappuccinos/cappuccino1.dart';
import 'package:demoapp/screens/cappuccinos/cappuccino2.dart';
import 'package:demoapp/screens/cappuccinos/cappuccino4.dart';
import 'package:demoapp/screens/cappuccinos/cappuccino6.dart';
import 'package:demoapp/screens/cappuccinos/cappuccino7.dart';
import 'package:demoapp/screens/cappuccinos/capuccino3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  static var screenheight;
  static var screenwidth;
  


  Widget buildCoffeeCategory({categoryName,isselected}){
  return Padding(
    padding: EdgeInsets.only(left: 20),
    child: Column(
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isselected?Color(0xffd17842):Color(0xff52555a)
          ),),
          isselected?Text("⬤",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffd17842),
                  ),):Text(""),

      ],
    ),
    );
}


Widget descriptionwidget(context,{images,title,subtitle,price,rating}){
  return Container(
    width: MediaQuery.of(context).size.width*0.4+10,
    height: MediaQuery.of(context).size.height*0.3,
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.all(15.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Color(0xff17191f),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      spreadRadius:1.0,
                      color: Color(0xff30221f)
                    )
                  ],
                  image:DecorationImage(
                    image: AssetImage(images),
                    fit:BoxFit.cover 
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
  
                  children: [
                    Text(title,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                      )
                    ),
                    Text(
                      subtitle,
                      style:TextStyle(
                      color: Colors.white54,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                      )
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
  
                          children: [
                            Text(
                          '\$\t',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffd17842)
                          ),
                        ),
                        Text(
                          "$price",
                          style:TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                          )
                          )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffd17842),
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Icon(
                            Icons.add,color: Colors.white,
                          ),
                        )
        
                      ]
                    )
                  ],
                ),
  
              )
              )
          ],
        )
      
      ,Container(
        width: 50.0,
        height: 20.0,
        decoration: BoxDecoration(
          color:Color(0xff231715),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(15.0)
          )
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.star,
              color: Color(0xffd17842),
              size: 15.0,
              ),
            Text(
            "$rating",
            style:TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight:FontWeight.bold
          )
        ),
          ],
        )
  
      ),
      ],
    ),
  );
}

  final _textEditingcontroller = new TextEditingController(); 
  final _focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          brightness: Brightness.dark,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
            color: kHighLightColor,
            size: 30.0
            ),
          centerTitle: true,
          title: Text(
            "KAPPISTOP",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          elevation: 0.0,
          backgroundColor:kBackgroundColor,
          actions: [
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationDrawer()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color:kImageBackgroundColor,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image:AssetImage("images/profile.png")
                    )
                ),
              ),
            )
           
          ],
        ),
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10,),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Row(
                //     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         height: 40,
                //         width: 40,
                //         decoration: BoxDecoration(
                //           color: kImageBackgroundColor,
                //           borderRadius: BorderRadius.circular(10.0)
    
                //         ),
                //         child: Icon(
                //           Icons.grid_view_rounded,
                //           size: 20,
                //           color: Color(0xff4d4f52),
                //           )
                //       ),
                //        Container(
                //         height: 40,
                //         width: 40,
                //         decoration: BoxDecoration(
                //           color: kImageBackgroundColor,
                //           borderRadius: BorderRadius.circular(15.0),
                //           image: DecorationImage(
                //             image:AssetImage("images/profile.png") 
                //             ),                        
    
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Find the Best",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffaeaeae)
                        ),),
                        Text(
                          "Coffee for you",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffaeaeae),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30.0),
                          child: TextField(
                            controller: _textEditingcontroller,
                            focusNode: _focusNode,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,color: kHighLightColor),
                              hintText: "Find your Coffee...",
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
                       
                    ],
                  ),
                )
              ,
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCoffeeCategory(
                      categoryName: "Cappuccino",
                      isselected:true,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Espresso",
                      isselected:false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Latte",
                      isselected:false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "EspressoPlus",
                      isselected:false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "CappuccinoPlus",
                      isselected:false,
                    ),
                    
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino1()));
                      },
                      child: descriptionwidget(context,
                      images: "images/coffee1.jpeg",
                      title: "Cappuccino",
                      subtitle: "With Oat Milk",
                      price: 4.2,
                      rating: 4.5
                      ),
                    ),
                     GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino2()));
                      },
                      child: descriptionwidget(context,
                      images: "images/coffee8.jpeg",
                      title: "Cappuccino",
                      subtitle: "With chocolate",
                      price: 4.1,
                      rating: 4.3
                      ),
                    ),
                     GestureDetector(
                        onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino3()));
                      },
                      child: descriptionwidget(context,
                      images: "images/coffee5.jpeg",
                      title: "Cappuccino",
                      subtitle: "With Banana",
                      price: 4.2,
                      rating: 4.5
                      ),
                     ),
                     GestureDetector(
                        onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino4()));
                      },
                       child: descriptionwidget(context,
                            images: "images/coffee3.jpeg",
                            title: "Cappuccino",
                            subtitle: "With Beaases",
                            price: 4.0,
                            rating: 4.1),
                     ),
                     GestureDetector(
                        onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino5()));
                      },
                       child: descriptionwidget(context,
                            images: "images/coffee2.jpeg",
                            title: "Cappuccino",
                            subtitle: "With Oat Milk",
                            price: 3.2,
                            rating: 3.9),
                     ),
                     GestureDetector(
                        onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino6()));
                      },
                       child: descriptionwidget(context,
                            images: "images/coffee7.jpeg",
                            title: "Cappuccino",
                            subtitle: "With Oat Milk",
                            price: 4.4,
                            rating: 4.5),
                     ),
                     GestureDetector(
                       onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Cappuccino7()));
                      },
                       child: descriptionwidget(context,
                            images: "images/coffee6.jpeg",
                            title: "Cappuccino",
                            subtitle: "With Pure Milk",
                            price: 4.2,
                            rating: 4.5),
                     ),
                  ],
                ),
              ),
              
              ListTile(
                leading: Text(
                  "Special For You",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.white
                  ),
                )
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12.0),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      height: screenheight*0.2-20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff171b22),
                        borderRadius:BorderRadius.circular(25.0)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                               onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cappuccino7()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 1.0,
                                      color: Color(0xff3321f),
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                  image:DecorationImage(
                                    image: AssetImage("images/coffee6.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0)
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("5 Coffee Bean added\nMust Try!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:15,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  Text("With Chocolate Milk",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:12,
                                    color:Colors.white54
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "\$\t",
                                            style: TextStyle(
                                              color: Color(0xffd17842),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0
                                            ),
                                          ),
                                           Text(
                                        "4.7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0
                                      ),
                                      ),
                                        ],
                                      ),
                                     
                                     Container(
                                       decoration: BoxDecoration(
                                         color: Color(0xffd17842),
                                         borderRadius: BorderRadius.circular(5.0)
                                         
                                       ),
                                       child: GestureDetector(
                                          onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Cappuccino7()));
                                            },
                                         child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25.0,
                                            ),
                                       )
                                     )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      width: 45.0,
                      height: 25.0,
                      decoration:BoxDecoration(
                        color:Color(0xff231715),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(15.0)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color:Color(0xffd17842),
                            size:18
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
    
          ),
        ),
        
      ),
    );
  }
}
