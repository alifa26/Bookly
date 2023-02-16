import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookmodel;
  const BookDetailsViewBody({
    Key? key, required this.bookmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsCustomAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: CustomListViewItem(
                    imgURl: bookmodel.volumeInfo.imageLinks!.thumbnail ?? '',
                  ),
                ),
                SizedBox(
                  height: 43,
                ),
                Text(
                  bookmodel.volumeInfo.title!,
                  style: Styles.textStyle20.copyWith(
                      fontSize: 30,
                      fontFamily: AssetsData.kGtSectraFine,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(bookmodel.volumeInfo.authors![0] ?? '',
                      style: Styles.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 18,
                ),
                BookRating(rating: bookmodel.volumeInfo.averageRating ?? 0,
                count: bookmodel.volumeInfo.ratingsCount ?? 0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                BooksAction(),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like ',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                SimilarBooksListView(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
