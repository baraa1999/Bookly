import 'package:bookly/Features/home/presention/views/widgets/similer_books_section.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';
import 'similer_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilerBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
