import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/smilar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/smilar%20books%20cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(builder: (context,state){
      if(state is SimilarBooksSuccess){
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(
                imgURl: state.books[index].volumeInfo.imageLinks!.thumbnail ?? '',
              ),
            );
          }),
    );}
    else if(state is SimilarBooksFailure){
      return CustomErrorWidget(ErrorMessage: state.errorMessage);
    }
    else{return CustomLoadingIndicator();}
    });
  }
}
