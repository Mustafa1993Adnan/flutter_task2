import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookData.dart';
import 'bookListTile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        titleSpacing: -12,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Hi, Ali",
          textAlign: TextAlign.right,
          style: TextStyle(color: Color(0xFF06070D)),
        ),
        backgroundColor: const Color(0xFFE5E5E5),
        leadingWidth: 90,
        leading: Image.asset('assets/images/Rectangle 14.png'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color(0xFF000000),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Book List",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
            const SizedBox(
              height: 39,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return BookTile(
                      bookImagePath: bookData[index][0],
                      bookName: bookData[index][1],
                      bookAuthor: bookData[index][2],
                      bookPrice: bookData[index][3],
                      bookRate: bookData[index][4],
                    );
                  },
                  itemCount: bookData.length,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 23,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

// [
// Row(
// children: [
// Expanded(
// flex: 1,
// child: Container(
// height: 150,
// color: Colors.blueGrey,
// // child: const Text("dd"),
// ),
// ),
// ],
// ),
// SizedBox(
// height: 10,
// ),
// Row(
// children: [
// Expanded(
// flex: 1,
// child: Container(
// height: 150,
// color: Colors.blueGrey,
// // child: const Text("dd"),
// ),
// ),
// ],
// )
// ],
