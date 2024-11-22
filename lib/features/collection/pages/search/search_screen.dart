import 'package:circuit_electricial_box/features/collection/pages/search/bloc/search_bloc.dart';
import 'package:circuit_electricial_box/features/collection/widgets/book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class SearchScreen extends StatelessWidget {
  final String parentId;
  const SearchScreen({super.key, required this.parentId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBookBloc(),
        )
      ],
      child: const SearchScreenBody(),
    );
  }
}

class SearchScreenBody extends StatefulWidget {
  const SearchScreenBody({super.key});

  @override
  State<SearchScreenBody> createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  late FocusNode _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: BlocBuilder<SearchBookBloc, SearchState>(
        builder: (context, state) {
          return Column(
            children: [
              _buildSearchBar(
                (query) {
                  context.read<SearchBookBloc>().add(SearchChildItems(query));
                },
              ),
              _buildBody(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBody(SearchState state) {
    if (state is Loading) {
      return const LinearProgressIndicator();
    }

    if (state is Loaded) {
      return Expanded(
        child: ListView.builder(
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            final book = state.books[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: BookItem(
                item: book,
                onTap: () {},
              ),
            );
          },
        ),
      );
    }

    if (state is Idle) {
      return const SizedBox.shrink();
    }

    if (state is Error) {
      return Center(child: Text(state.message));
    }

    return const Center(child: Text('No items found.'));
  }

  Widget _buildSearchBar(Function(String) onChanged) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: colorScheme.secondaryContainer.withOpacity(0.25),
        ),
        child: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(MingCuteIcons.mgc_search_2_line),
            ),
            Expanded(
              child: TextField(
                focusNode: _focusNode,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: colorScheme.onSecondaryContainer.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
