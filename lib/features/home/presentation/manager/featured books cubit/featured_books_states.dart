import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable {}

class FeaturedBooksInitial extends FeaturedBooksStates {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FeaturedBooksLoading extends FeaturedBooksStates {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
