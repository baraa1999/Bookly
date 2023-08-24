import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similer_books_list_view.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('you can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
