class BookEntity {
  final String id;
  final String parentId;
  final String title;
  final String description;
  final double progress;
  final String imageUrl;

  BookEntity({
    required this.id,
    required this.parentId,
    required this.title,
    required this.description,
    required this.progress,
    required this.imageUrl,
  });
}
