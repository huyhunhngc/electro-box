import 'package:circuit_electricial_box/domain/repository/book_repository.dart';
import 'package:circuit_electricial_box/shared/data/book_repository_impl.dart';
import 'package:get_it/get_it.dart';

void registerRepository(GetIt getIt) {
  getIt.registerSingleton<BookRepository>(
    BookRepositoryImpl(),
  );
}
