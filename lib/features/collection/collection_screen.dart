import 'package:circuit_electricial_box/features/collection/widgets/book_item_widget.dart';
import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:circuit_electricial_box/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CollectionScreenBody();
  }
}

class CollectionScreenBody extends StatefulWidget {
  const CollectionScreenBody({super.key});

  @override
  State<CollectionScreenBody> createState() => _CollectionScreenBodyState();
}

class _CollectionScreenBodyState extends State<CollectionScreenBody> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.collection,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  const parentId =
                      'someParentId'; // Replace with the actual parent ID
                  context.goNamed(searchRoute,
                      pathParameters: {"parentId": parentId});
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: colorScheme.secondaryContainer.withOpacity(0.25),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(MingCuteIcons.mgc_search_2_line),
                      const SizedBox(width: 16),
                      Text(
                        "Search",
                        style: TextStyle(
                          color:
                              colorScheme.onSecondaryContainer.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                //scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0), // Add space between items
                    child: BookItem(
                      item: BookItemModel(
                        imageUrl: 'assets/circuit/as.png',
                        title: 'The Great Book Title',
                        description: 'This is a brief description',
                        progress: 0.75, // 75% complete
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
