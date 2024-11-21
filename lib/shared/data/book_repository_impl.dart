import 'package:circuit_electricial_box/domain/entity/book.dart';
import 'package:circuit_electricial_box/domain/repository/book_repository.dart';

class BookRepositoryImpl extends BookRepository {
  // Simulating a database

  @override
  Future<List<BookEntity>> fetchParentItems() async {
    // Fetch parent folders
    return [
      BookEntity(
        id: '1',
        parentId: '0',
        title: 'Parent Folder 1',
        description: 'Description of Parent Folder 1',
        progress: 0.0,
        imageUrl: 'https://example.com/folder1.jpg',
      ),
    ];
  }

  @override
  Future<List<BookEntity>> searchChildItems(String query) async {
    // Fetch child items based on a query
    return [
      BookEntity(
        id: '101',
        parentId: '1',
        title: 'The Great Book Title',
        description: 'Brief description',
        progress: 0.75,
        imageUrl: 'https://example.com/book-cover.jpg',
      ),
    ];
  }
}
