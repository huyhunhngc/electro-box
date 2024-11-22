import 'package:circuit_electricial_box/domain/entity/book.dart';
import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class BookItem extends StatelessWidget {
  final BookItemModel item;
  final VoidCallback? onTap;

  const BookItem({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 24,
      shadowColor: colorScheme.shadow.withOpacity(0.3),
      surfaceTintColor: colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.outline.withOpacity(0.1),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(
                      MingCuteIcons
                          .mgc_heart_line, // Use Icons.favorite if it's already favorited
                      color: colorScheme.primary,
                    ),
                    onPressed: () {
                      // Handle favorite button tap
                    },
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item.imageUrl, // Path to your asset image
                        width: 90,
                        height: 100,
                        fit: BoxFit.fitHeight,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 90,
                            height: 100,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            child: Icon(
                              Icons.image_not_supported,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 16),
                    // Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            item.title,
                            style: textTheme.titleMedium?.copyWith(
                              color: colorScheme.onSurface,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),

                          // Description
                          Text(
                            item.description,
                            style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),

                          // Progress
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: item.progress,
                                    backgroundColor:
                                        colorScheme.secondaryContainer,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      colorScheme.primary,
                                    ),
                                    minHeight: 4,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text("${(item.progress * 100).ceil()}%")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class BookItemModel {
  final String title;
  final String description;
  final double progress;
  final String imageUrl;

  BookItemModel({
    required this.title,
    required this.description,
    required this.progress,
    required this.imageUrl,
  });

  // Factory for mapping from entity
  factory BookItemModel.fromEntity(BookEntity entity) {
    return BookItemModel(
      title: entity.title,
      description: entity.description,
      progress: entity.progress,
      imageUrl: entity.imageUrl,
    );
  }
}
