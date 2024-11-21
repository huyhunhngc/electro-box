import 'package:circuit_electricial_box/domain/entity/book.dart';

abstract class BookRepository {
  Future<List<BookEntity>> fetchParentItems();
  Future<List<BookEntity>> searchChildItems(String query);
}
