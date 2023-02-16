import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable {}

class SimilarBooksInitial extends SimilarBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SimilarBooksLoading extends SimilarBooksState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;
  SimilarBooksFailure(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
