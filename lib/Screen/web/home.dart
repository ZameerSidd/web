// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_ui/Screen/web/widget/footer.dart';
import 'package:sample_ui/Screen/web/widget/list_of_product.dart';
import 'package:sample_ui/Util/Color/hex_colo.dart';
import 'package:sample_ui/Util/Data/data_constant.dart';
import 'package:sample_ui/Util/Widget/on_hover.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List list = DataConstant().list;
  var controller = TextEditingController();
  late double padding;
  late double leftPadding;

  checkPadding(double currentWidth) {
    if (currentWidth < 1250) {
      padding = 40.0;
      leftPadding = 50.0;
    }
    if (currentWidth >= 1250) {
      padding = 100.0;
      leftPadding = 100.0;
    }

    if (currentWidth <= 700) {
      leftPadding = 10;
    }

    if (currentWidth <= 600) {
      padding = 10.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    checkPadding(currentWidth);
    return Scaffold(
        // drawer: currentWidth <= 950
        //     ? Drawer(
        //         child: ListView(children: [
        //           IconButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               icon: const Icon(Icons.cancel)),
        //           SizedBox(
        //             height: 30,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.of(context).pushNamed('/HomePage');
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.only(left: 20, top: 10),
        //               child: OnHover(builder: (isHovered) {
        //                 final color = isHovered
        //                     ? HexColor('#08547c')
        //                     : const Color.fromARGB(255, 44, 43, 43);
        //                 return Text(
        //                   "Become a seller",
        //                   style: TextStyle(
        //                     color: color,
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.w400,
        //                     // fontFamily: 'Poppins',
        //                   ),
        //                 );
        //               }),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 15,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.of(context).pushNamed('/about');
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.only(left: 20, top: 10),
        //               child: OnHover(builder: (isHovered) {
        //                 final color = isHovered
        //                     ? HexColor('#08547c')
        //                     : const Color.fromARGB(255, 44, 43, 43);
        //                 return Text(
        //                   "More",
        //                   style: TextStyle(
        //                       color: color,
        //                       fontWeight: FontWeight.w400,
        //                       // fontFamily: 'Poppins',
        //                       fontSize: 15),
        //                 );
        //               }),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 15,
        //           ),
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.of(context).pushNamed('/blogs');
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.only(left: 20, top: 10),
        //               child: OnHover(builder: (isHovered) {
        //                 final color = isHovered
        //                     ? HexColor('#08547c')
        //                     : const Color.fromARGB(255, 44, 43, 43);
        //                 return Text(
        //                   "Cart",
        //                   style: TextStyle(
        //                       color: color,
        //                       fontWeight: FontWeight.w400,
        //                       // fontFamily: 'Poppins',
        //                       fontSize: 15),
        //                 );
        //               }),
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 20,
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             children: [
        //               MaterialButton(
        //                 hoverColor: HexColor('#08547c'),
        //                 onPressed: () {
        //                   Navigator.of(context).pushNamed('/signin');
        //                 },
        //                 height: 55,
        //                 minWidth: 120,
        //                 child: OnHover(builder: (isHovered) {
        //                   final color = isHovered ? Colors.white : Colors.black;
        //                   return Text(
        //                     "Sign In",
        //                     style: TextStyle(
        //                         color: color,
        //                         fontWeight: FontWeight.w400,
        //                         // fontFamily: 'Poppins',
        //                         fontSize: 15),
        //                   );
        //                 }),
        //                 textColor: Colors.white,
        //                 color: Colors.white,
        //                 shape: RoundedRectangleBorder(
        //                   side: BorderSide(color: HexColor('#08547c'), width: 2),
        //                   borderRadius: BorderRadius.circular(8),
        //                 ),
        //               ),
        //               MaterialButton(
        //                 hoverColor: const Color.fromARGB(255, 24, 100, 53),
        //                 onPressed: () {
        //                   Navigator.of(context).pushNamed('/register');
        //                 },
        //                 height: 55,
        //                 minWidth: 150,
        //                 child: const Text(
        //                   'Get Started',
        //                   style: TextStyle(
        //                     fontSize: 18,
        //                     fontWeight: FontWeight.w400,
        //                     // fontFamily: 'Poppins'
        //                   ),
        //                 ),
        //                 textColor: Colors.white,
        //                 color: HexColor('#08547c'),
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(8),
        //                 ),
        //               ),
        //             ],
        //           )
        //         ]),
        //       )
        //     : null,
        appBar: AppBar(
          // flexibleSpace: Text('data'),
          backgroundColor: HexColor('#08547c'),
          elevation: 0,
          actions: [
            Flexible(
              child: Center(
                child: Row(
                  children: [
                    if (currentWidth > 1100)
                      Expanded(flex: 1, child: Container()),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          // color: Colors.amber,
                          child: Text(
                            'TrustApp',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        )),
                    Expanded(
                        flex: 6,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Search for product, brand and more',
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              isDense: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.5, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(6)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(6))),
                        )),
                    if (currentWidth > 950)
                      Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 11),
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: HexColor('#08547c'), fontSize: 17),
                            ),
                          )),
                    if (currentWidth > 950)
                      Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.amber,
                            child: Text(
                              'Become a Seller',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            ),
                          )),
                    if (currentWidth > 950)
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.amber,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            ),
                          )),
                    if (currentWidth > 950)
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart),
                                Text(
                                  'Cart',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300),
                                ),
                                // if (currentWidth <= 1100)
                                //   SizedBox(
                                //     width: 20,
                                //   )
                              ],
                            ),
                          )),
                    if (currentWidth > 1100)
                      Expanded(flex: 1, child: Container()),
                    if (currentWidth <= 950)
                      Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (currentWidth <= 950)
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  color: HexColor('#08547c'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (currentWidth > 650)
                        Expanded(flex: 1, child: Container()),
                      Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 40),
                            alignment: Alignment.center,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: HexColor('#08547c'), fontSize: 17),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.amber,
                            child: Text(
                              'Become a Seller',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.amber,
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300),
                                ),
                                // if (currentWidth <= 1100)
                                //   SizedBox(
                                //     width: 20,
                                //   )
                              ],
                            ),
                          )),
                      if (currentWidth > 650)
                        Expanded(flex: 1, child: Container()),
                    ],
                  ),
                ),
              // Text('$currentWidth'),
              Center(
                child: Container(
                    // color: Colors.amber,
                    height: 100,
                    width: currentWidth - 80,
                    child: listOfProduct(list: list)),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: CarouselSlider.builder(
                  itemCount: list.length,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 400,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                  itemBuilder: (context, i, id) {
                    //for onTap to redirect to another screen
                    return GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            list[i]['path'],
                            width: currentWidth > 750
                                ? (currentWidth - 200)
                                : (currentWidth - 50),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onTap: () {
                        var url = list[i]['path'];
                        log("${url} $currentWidth");
                      },
                    );
                  },
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        child: Image.asset(
                          'assets/image/mobile.jpg',
                          fit: BoxFit.fitHeight,
                          height: 500,
                        ),
                      )),
                  if (currentWidth > 710)
                    SizedBox(
                      width: 15,
                    ),
                  if (currentWidth > 710)
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.black,
                          child: Image.asset(
                            'assets/image/mobile.jpg',
                            fit: BoxFit.fitHeight,
                            height: 500,
                          ),
                        )),
                  if (currentWidth > 980)
                    SizedBox(
                      width: 15,
                    ),
                  if (currentWidth > 980)
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.black,
                          child: Image.asset(
                            'assets/image/mobile.jpg',
                            fit: BoxFit.fitHeight,
                            height: 500,
                          ),
                        )),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              if (currentWidth <= 980)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.black,
                  child: Image.asset(
                    'assets/image/mobile.jpg',
                    fit: BoxFit.fitHeight,
                    height: 500,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              if (currentWidth <= 710)
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(
                    'assets/image/mobile.jpg',
                    fit: BoxFit.fitHeight,
                    height: 500,
                  ),
                ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'We Are ',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: 'Live!',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        color: Colors.red,
                        fontWeight: FontWeight.w500)),
                // TextSpan(text: '\n'),
              ])),

              Text('We have launched and currently live in Bangalore!',
                  style: TextStyle(
                      fontSize: currentWidth > 920 ? 18 : 15,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/image/google_play.webp'),
              SizedBox(
                height: 15,
              ),
              Text(
                  '*We are currently allowing people on an invite basis only, to make sure nothing breaks 🙂 To request your invite code, please use the form at below! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: currentWidth > 920 ? 18 : 15,
                      fontWeight: currentWidth > 920
                          ? FontWeight.bold
                          : FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'WE ARE NOW ',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: 'PROUDLY',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        color: Colors.red,
                        fontWeight: FontWeight.w500)),

                TextSpan(
                    text: ' PART OF',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        fontWeight: FontWeight.w500)),
                // TextSpan(text: '\n'),
              ])),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (currentWidth <= 715)
                      SizedBox(
                        width: 10,
                      ),
                    if (currentWidth > 715)
                      SizedBox(
                        width: 50,
                      ),
                    Expanded(
                        flex: 1, child: Image.asset('assets/image/india.webp')),
                    Expanded(
                        flex: 1,
                        child: Image.asset('assets/image/startup.webp')),
                    Expanded(
                        flex: 1, child: Image.asset('assets/image/10000.webp')),
                    Expanded(
                        flex: 1,
                        child: Image.asset('assets/image/green circle.webp')),
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                            'assets/image/start up karnataka.webp')),
                    if (currentWidth > 715)
                      SizedBox(
                        width: 50,
                      ),
                    if (currentWidth <= 715)
                      SizedBox(
                        width: 10,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'SIGNUP FOR ',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: 'UPDATES!',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        color: Colors.red,
                        fontWeight: FontWeight.w500)),
                // TextSpan(text: '\n'),
              ])),

              Text(
                  'We have just launched and we would be happy to have you in our growing community!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: currentWidth > 920 ? 18 : 17,
                      fontWeight: currentWidth > 920
                          ? FontWeight.bold
                          : FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                              width: 3.0, color: HexColor('#08547c'))),
                      enabledBorder: OutlineInputBorder()),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: currentWidth > 800 ? 140 : 22.0,
                  ),
                  Text(
                    'We know that you hate spams, so do we!',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: HexColor('#08547c'), fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: currentWidth > 800 ? 140 : 22.0,
                  ),
                  MaterialButton(
                      color: Colors.redAccent,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Notify me!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'FOLLOW US ',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: 'ON!',
                    style: TextStyle(
                        fontSize: currentWidth > 920 ? 60 : 30,
                        color: Colors.red,
                        fontWeight: FontWeight.w500)),
                // TextSpan(text: '\n'),
              ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnHover(builder: (isHovered) {
                    final color = isHovered ? Colors.blue : Colors.black;
                    return IconButton(
                        splashRadius: 10,
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 50,
                          color: color,
                        ));
                  }),
                  SizedBox(
                    width: 30,
                  ),
                  OnHover(builder: (isHovered) {
                    final color = isHovered ? Colors.blue : Colors.black;
                    return IconButton(
                        splashRadius: 10,
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 50,
                          color: color,
                        ));
                  }),
                  SizedBox(
                    width: 30,
                  ),
                  OnHover(builder: (isHovered) {
                    final color = isHovered ? Colors.blue : Colors.black;
                    return IconButton(
                        splashRadius: 10,
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 50,
                          color: color,
                        ));
                  }),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                // height: 500,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset('assets/image/patterbg.png'),
                    Container(
                      color: Colors.black,
                      child: footer(
                          currentWidth: currentWidth,
                          context: context,
                          controller: controller,
                          padding: padding,
                          leftPadding: leftPadding),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ));
  }
}
