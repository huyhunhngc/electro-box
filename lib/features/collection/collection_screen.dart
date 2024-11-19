import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isSearchExpanded = true;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              S.current.collection,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
            ],
            pinned: true,
            floating: true,
            snap: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: _isSearchExpanded ? 60 : 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(
                    hintText: S.current.appName,
                    leading: const Icon(Icons.search),
                    onChanged: (value) {
                      // Handle search
                    },
                  ),
                ),
              ),
            ),
            // Material 3 styling
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
        ],
        body: ListView.builder(
          itemCount: 50, // Example list
          itemBuilder: (context, index) => ListTile(
            title: Text('Item $index'),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isSearchExpanded) {
        setState(() {
          _isSearchExpanded = false;
        });
      }
    }

    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_isSearchExpanded) {
        setState(() {
          _isSearchExpanded = true;
        });
      }
    }
  }
}
