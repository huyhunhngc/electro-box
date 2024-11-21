import 'package:circuit_electricial_box/domain/repository/book_repository.dart';
import 'package:circuit_electricial_box/features/collection/widgets/book_item_widget.dart';
import 'package:circuit_electricial_box/service_locator/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBookBloc extends Bloc<SearchEvent, SearchState> {
  final BookRepository repository = ServiceLocator.get<BookRepository>();

  SearchBookBloc() : super(Idle()) {
    on<SearchChildItems>(_searchChildItems);
  }

  Future<void> _fetchParentItems(
      FetchParentItems event, Emitter<SearchState> emit) async {
    try {
      emit(Loading());
      final entities = await repository.fetchParentItems();
      final items = entities.map(BookItemModel.fromEntity).toList();
      emit(Loaded(items));
    } catch (e) {
      emit(Error('Failed to load parent items.'));
    }
  }

  Future<void> _searchChildItems(
      SearchChildItems event, Emitter<SearchState> emit) async {
    try {
      if (event.query.isEmpty) {
        emit(Idle());
        return;
      }
      emit(Loading());
      final entities = await repository.searchChildItems(event.query);
      final items = entities.map(BookItemModel.fromEntity).toList();
      emit(Loaded(items));
    } catch (e) {
      emit(Error('Failed to search child items.'));
    }
  }
}
