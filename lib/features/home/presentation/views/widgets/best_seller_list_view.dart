import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest%20books%20cubit/newest_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(builder: (context , state){
      if(state is NewsetBooksSuccess){
        return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:  BestSellerListViewItem(book: state.books[index],),
        );
      },
    );
      }
      else if (state is NewsetBooksFailure){
        return CustomErrorWidget(ErrorMessage: state.errMessage);
      }
      else{return CustomLoadingIndicator();}
    });
  }
}
