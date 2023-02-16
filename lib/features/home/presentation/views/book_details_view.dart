
import 'package:bookly/features/home/presentation/manager/smilar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookmodel;
  const BookDetailsView({Key? key, required this.bookmodel}) : super(key: key);

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  void initState(){
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      widget.bookmodel.volumeInfo.categories![0]
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookmodel: widget.bookmodel,),
      ),
    );
  }
}
