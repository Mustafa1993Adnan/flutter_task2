import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_task2/customeFont.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'bookData.dart';

class BookDetails extends StatelessWidget {
  final bookID;
  const BookDetails({super.key, required this.bookID});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black, // <-- SEE HERE
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 216,
                      height: 320,
                      child: Image.asset(
                        bookData[bookID][0],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                bookData[bookID][1],
                style:
                    customGoogleFont(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                bookData[bookID][2],
                style: customGoogleFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBarIndicator(
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    rating: bookData[bookID][4],
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.only(left: 4),
                  ),
                  Text(
                    "  ${bookData[bookID][4]}",
                    style: customGoogleFont(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "/ 5.0",
                    style: customGoogleFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF828285)),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, //.horizontal
                  child: Text(" ${bookData[bookID][5]}",
                      style: customGoogleFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                ),
              ),
              // SingleChildScrollView(child: Text(" ${bookData[bookID][5]}")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Preview",
                          style: customGoogleFont(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.message)),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Reviews",
                          style: customGoogleFont(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 319,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        " Buy Now for \$ ${bookData[bookID][3]}",
                        style: customGoogleFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
