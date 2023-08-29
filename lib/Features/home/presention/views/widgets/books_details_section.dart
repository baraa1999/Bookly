import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imgUrl:
                'data:image/jpeg;base64,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',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
