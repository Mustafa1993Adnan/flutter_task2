import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'customeFont.dart';

class BookTile extends StatelessWidget {
  final String bookImagePath;
  final String bookName;
  final String bookAuthor;
  final double bookPrice;
  final double bookRate;

  const BookTile(
      {Key? key,
      required this.bookImagePath,
      required this.bookName,
      required this.bookAuthor,
      required this.bookPrice,
      required this.bookRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(bookImagePath),
          width: 72,
          height: 106,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 28,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style:
                  customGoogleFont(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(bookAuthor,
                style: customGoogleFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            const SizedBox(
              height: 7,
            ),
            Text(
              '$bookPrice \$',
              style: customGoogleFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            // RatingBar.builder(
            //   initialRating: bookRate,
            //   minRating: 1,
            //   direction: Axis.horizontal,
            //   allowHalfRating: true,
            //   itemCount: 5,
            //   itemSize: 20,
            //   itemPadding: const EdgeInsets.only(right: 4),
            //   itemBuilder: (context, _) => const Icon(
            //     Icons.star,
            //     color: Colors.amber,
            //   ),
            //   onRatingUpdate: (rating) {},
            // ),
            RatingBarIndicator(
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              rating: bookRate,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 20,
              itemPadding: const EdgeInsets.only(left: 4),
            ),
            // stars()
          ],
        )
      ],
    );
  }
}
