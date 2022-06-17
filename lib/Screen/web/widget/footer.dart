// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_ui/Screen/web/widget/on_hover_number.dart';
import 'package:sample_ui/Screen/web/widget/on_hover_text.dart';
import 'package:sample_ui/Util/Color/hex_colo.dart';

Widget footer(
    {required double currentWidth,
    required BuildContext context,
    required TextEditingController controller,
    required double padding,
    required double leftPadding}) {
  return Column(
    children: [
      Container(
        color: Colors.black,
        width: currentWidth,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: currentWidth < 800 ? 8 : 3,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              alignment: currentWidth < 750
                                  ? Alignment.center
                                  : Alignment.topLeft,
                              padding: EdgeInsets.only(bottom: 20),
                              child: Image.asset(
                                'assets/image/logo.png',
                                height: 200,
                              )),
                          Text(
                            'Building the world’s biggest community for people and products, one community at a time!',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                currentWidth > 1000
                    ? Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.black,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: leftPadding),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/contactUs');
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30.0),
                                              child: Text(
                                                'Contact -- Us',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: HexColor('#08547c'),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.white,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: OnHoverText(
                                                  builder: (bool isHovered) {
                                                    final color = isHovered
                                                        ? Colors.blue
                                                        : Colors.white;
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Text(
                                                        'Rajajinagar, Bangalore',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 17,
                                                            color: color),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.call,
                                                  color: Colors.white,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // launch(
                                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                                  },
                                                  child: OnHoverText(
                                                    builder: (bool isHovered) {
                                                      final color = isHovered
                                                          ? Colors.blue
                                                          : Colors.white;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: GestureDetector(
                                                          child: Text(
                                                            '+917022996912',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 17,
                                                                color: color),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.email,
                                                  color: Colors.white,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // launch(
                                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                                  },
                                                  child: OnHoverText(
                                                    builder: (bool isHovered) {
                                                      final color = isHovered
                                                          ? Colors.blue
                                                          : Colors.white;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: GestureDetector(
                                                          child: Text(
                                                            'info@wealthepaver.com',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 17,
                                                                color: color),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              alignment: Alignment.topLeft,
                            )))
                    : const Expanded(flex: 2, child: SizedBox()),
                currentWidth > 1000
                    ? Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: leftPadding),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30.0),
                                        child: Text(
                                          'Quick Link',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: HexColor('#08547c'),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/privacy_policy');
                                          },
                                          child: OnHoverText(
                                            builder: (bool isHovered) {
                                              final color = isHovered
                                                  ? HexColor('b8d434')
                                                  : Colors.white;

                                              return Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                    fontSize: 17, color: color),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed('/termsofservice');
                                          },
                                          child: OnHoverText(
                                            builder: (bool isHovered) {
                                              final color = isHovered
                                                  ? HexColor('b8d434')
                                                  : Colors.white;

                                              return Text(
                                                'Term Of Service',
                                                style: TextStyle(
                                                    fontSize: 17, color: color),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          alignment: Alignment.topLeft,
                        ))
                    : const SizedBox(),
                currentWidth > 1000
                    ? Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.black,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: leftPadding),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/contactUs');
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30.0),
                                              child: Text(
                                                'Contact -- Us',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: HexColor('#08547c'),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.white,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: OnHoverText(
                                                  builder: (bool isHovered) {
                                                    final color = isHovered
                                                        ? Colors.blue
                                                        : Colors.white;
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Text(
                                                        'Rajajinagar, Bangalore',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 17,
                                                            color: color),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.call,
                                                  color: Colors.white,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // launch(
                                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                                  },
                                                  child: OnHoverText(
                                                    builder: (bool isHovered) {
                                                      final color = isHovered
                                                          ? Colors.blue
                                                          : Colors.white;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: GestureDetector(
                                                          child: Text(
                                                            '+917022996912',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 17,
                                                                color: color),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.email,
                                                  color: Colors.white,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // launch(
                                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                                  },
                                                  child: OnHoverText(
                                                    builder: (bool isHovered) {
                                                      final color = isHovered
                                                          ? Colors.blue
                                                          : Colors.white;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: GestureDetector(
                                                          child: Text(
                                                            'info@wealthepaver.com',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 17,
                                                                color: color),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              alignment: Alignment.topLeft,
                            )))
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
      currentWidth <= 1000
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                        color: Colors.black,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: leftPadding),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('/contactUs');
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 30.0),
                                          child: Text(
                                            'Contact -- Us',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: HexColor('#08547c'),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: OnHoverText(
                                              builder: (bool isHovered) {
                                                final color = isHovered
                                                    ? Colors.blue
                                                    : Colors.white;
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    'Rajajinagar, Bangalore',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        fontSize: 17,
                                                        color: color),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 25.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.call,
                                              color: Colors.white,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // launch(
                                                //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                              },
                                              child: OnHoverText(
                                                builder: (bool isHovered) {
                                                  final color = isHovered
                                                      ? Colors.blue
                                                      : Colors.white;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: GestureDetector(
                                                      child: Text(
                                                        '+917022996912',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 17,
                                                            color: color),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 25.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.email,
                                              color: Colors.white,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // launch(
                                                //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                              },
                                              child: OnHoverText(
                                                builder: (bool isHovered) {
                                                  final color = isHovered
                                                      ? Colors.blue
                                                      : Colors.white;
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: GestureDetector(
                                                      child: Text(
                                                        'info@wealthepaver.com',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 17,
                                                            color: color),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          alignment: Alignment.topLeft,
                        ))),
                if (currentWidth < 1000)
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: leftPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30.0),
                                      child: Text(
                                        'Quick Link',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: HexColor('#08547c'),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/privacy_policy');
                                        },
                                        child: OnHoverText(
                                          builder: (bool isHovered) {
                                            final color = isHovered
                                                ? HexColor('b8d434')
                                                : Colors.white;

                                            return Text(
                                              'Privacy Policy',
                                              style: TextStyle(
                                                  fontSize: 17, color: color),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: GestureDetector(
                                        onTap: () => Navigator.of(context)
                                            .pushNamed('/termsofservice'),
                                        child: OnHoverText(
                                          builder: (bool isHovered) {
                                            final color = isHovered
                                                ? HexColor('b8d434')
                                                : Colors.white;

                                            return Text(
                                              'Term Of Service',
                                              style: TextStyle(
                                                  fontSize: 17, color: color),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.topLeft,
                      )),
                currentWidth >= 700
                    ? Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.black,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: leftPadding),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/contactUs');
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30.0),
                                              child: Text(
                                                'Contact Us',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: HexColor('#08547c'),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_android,
                                                color: HexColor('b8d434'),
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: OnHoverText(
                                                  builder: (bool isHovered) {
                                                    final color = isHovered
                                                        ? HexColor('b8d434')
                                                        : Colors.blue;
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Text(
                                                        '925-218-1839',
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 17,
                                                            color: color),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25.0),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.email,
                                                  color: HexColor('b8d434'),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // launch(
                                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                                  },
                                                  child: OnHoverText(
                                                    builder: (bool isHovered) {
                                                      final color = isHovered
                                                          ? HexColor('b8d434')
                                                          : Colors.blue;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.0),
                                                        child: GestureDetector(
                                                          child: Text(
                                                            'info@wealthepaver.com',
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                fontSize: 17,
                                                                color: color),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              alignment: Alignment.topLeft,
                            )))
                    : const SizedBox()
              ],
            )
          : const SizedBox(),
      if (currentWidth < 700)
        Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            color: Colors.black,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: leftPadding),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/contactUs');
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                'Contact Us',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: HexColor('#08547c'),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone_android,
                                color: HexColor('b8d434'),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: OnHoverText(
                                  builder: (bool isHovered) {
                                    final color = isHovered
                                        ? HexColor('b8d434')
                                        : Colors.blue;
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        '925-218-1839',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 17,
                                            color: color),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: HexColor('b8d434'),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // launch(
                                    //     "mailto:info@wealthepaver.com?subject=Test&body=Test");
                                  },
                                  child: OnHoverText(
                                    builder: (bool isHovered) {
                                      final color = isHovered
                                          ? HexColor('b8d434')
                                          : Colors.blue;
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: GestureDetector(
                                          child: Text(
                                            'info@wealthepaver.com',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontSize: 17,
                                                color: color),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              alignment: Alignment.topLeft,
            )),
    ],
  );
}
