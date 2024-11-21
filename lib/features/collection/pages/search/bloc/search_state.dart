part of 'search_bloc.dart';

sealed class SearchState {}

class Idle extends SearchState {}

class Loading extends SearchState {}

class Loaded extends SearchState {
  final List<BookItemModel> books;
  Loaded(this.books);
}

class Error extends SearchState {
  final String message;
  Error(this.message);
}
