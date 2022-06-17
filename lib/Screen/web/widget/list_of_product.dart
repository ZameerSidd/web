import 'package:flutter/material.dart';

Widget listOfProduct({required List list}) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) {
        // log('message : ${list[index]['path']}');
        return Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      list[index]['path'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(list[index]["productName"]),
              ],
            ),
            const SizedBox(
              width: 20,
            )
          ],
        );
      });
}
