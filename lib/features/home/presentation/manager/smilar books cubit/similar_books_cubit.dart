import 'dart:ffi';

import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/smilar%20books%20cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.homerepo) : super(SimilarBooksInitial());
  final HomeRepo homerepo;

  Future<void> fetchSimilarBooks( String category) async{
    emit(SimilarBooksLoading());
    var result = await homerepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errorMessage));
    }, (books){
      emit(SimilarBooksSuccess(books));
    });
  }

}