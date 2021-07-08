import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Cappuccino6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage("images/coffee7.jpeg"),
                          fit: BoxFit.cover
                        )
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height*0.2-20,
                                decoration: BoxDecoration(
                                  color: Color(0xff311d18).withOpacity(0.6)
                                  
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Cappuccino",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text("With Oat Milk",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white54
                                          ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffd17842),
                                    
                                              ),
                                              Text("4.5",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                              ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                             width: 40.0,
                                             height: 40.0,
                                             decoration: BoxDecoration(
                                               color: Color(0xff141921),
                                               borderRadius: BorderRadius.circular(10.0),
                                               
                                               ),
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                   SvgPicture.asset("images/coffeeicon.svg",
                                                   height: 20.0,
                                                   color: Color(0xffd17842),
                                                   ),
                                                   Text("Coffee",
                                                   style: TextStyle(
                                                     color: Colors.white54,
                                                     fontSize: 10.0
                                                   ),
                                                   )
                                                 ],
                                               ),
                                             ),
                                              Container(
                                             width: 40.0,
                                             height: 40.0,
                                             decoration: BoxDecoration(
                                               color: Color(0xff141921),
                                               borderRadius: BorderRadius.circular(10.0),
                                               
                                               ),
                                               child: Column(
                                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                   SvgPicture.asset("images/milkicon.svg",
                                                   height: 20.0,
                                                   color: Color(0xffd17842),
                                                   ),
                                                   Text("Milk",
                                                   style: TextStyle(
                                                     color: Colors.white54,
                                                     fontSize: 10.0
                                                   ),
                                                   ),
          
                                                 ],
                                               ),
                                             ),
                                                                           
                                          ],
                                        ),
                                        SizedBox(height: 10.0,),
                                        MaterialButton(
                                          color: Color(0xff141921),
                                          minWidth: 120,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            
                                          onPressed: () {},
                                          child: Text(
                                            "Medicum Roasted",
                                            style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )   
                                      ],
                                    ),
                                  )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                      ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context,true);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                         Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                      ],
                    )
                  ],
                ),
      
               ), 
               Expanded( 
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text(
                     "Description",
                     style: TextStyle(
                       color: Color(0xffaeaeae),
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold
                       ),
                      ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                                "A Cappuccino is a coffee -based drink",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "primarlily from expresso and Milk ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                "Read More..",
                                style: TextStyle(
                                  color: Color(0xffd17842),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                         ],
                       ),
                      Text(
                        "Size",
                        style: TextStyle(
                          color:Color(0xffaeaeae),
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xffb25e2b)
                              ),
                              
                            ),
                            child: Text(
                              "S",
                              style: TextStyle(
                                color:Color(0xffb86b3c),
                                
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color(0xff141921),
                            child: Text(
                              "M",
                              style: TextStyle(
                                color:Color(0xffb86b3c),
                                
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color(0xff141921),
                            child: Text(
                              "L",
                              style: TextStyle(
                                color:Color(0xffb86b3c),
                                
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                  "Price",
                                  style: TextStyle(
                                    color: Color(0xffaeaeae),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("\$\t",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd17842)
                                    ),
                                    ),
                                    Text("4.20",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15
                                    ),
                                    ),
                                    
                                  ],
                                ),

                              ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: MaterialButton(
                              color:Color(0xffd17842),
                              onPressed: (){},
                              minWidth: MediaQuery.of(context).size.height*0.3-30,
                              height: 55,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:20.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                   ],
                 )
              )   
            ],
      
          ),
        ),
      ),
    );
    
      
  
  }
}