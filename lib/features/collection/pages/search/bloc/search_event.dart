part of 'search_bloc.dart';

sealed class SearchEvent {}

class FetchParentItems extends SearchEvent {}

class SearchChildItems extends SearchEvent {
  final String query;
  SearchChildItems(this.query);
}
