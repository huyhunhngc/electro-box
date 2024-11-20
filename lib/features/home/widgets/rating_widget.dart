import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class RatingCubit extends Cubit<int> {
  RatingCubit() : super(0);

  void updateRating(int stars) {
    emit(stars);
  }
}

class RatingWidget extends StatelessWidget {
  final Function(int) onRate;

  const RatingWidget({super.key, required this.onRate});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (_) => RatingCubit(),
      child: BlocBuilder<RatingCubit, int>(
        builder: (context, selectedStars) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: colorScheme.secondaryContainer.withOpacity(0.25),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Take a moment to give us 5 stars!",
                  style: textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSecondaryContainer,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                              scale: animation, child: child);
                        },
                        child: Icon(
                          index < selectedStars
                              ? MingCuteIcons.mgc_star_fill
                              : MingCuteIcons.mgc_star_line,
                          key: ValueKey<int>(index < selectedStars ? 1 : 0),
                          color: Colors.amber,
                          size: 32,
                        ),
                      ),
                      onPressed: () {
                        context.read<RatingCubit>().updateRating(index + 1);
                      },
                    );
                  }),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed:
                        selectedStars > 0 ? () => onRate(selectedStars) : null,
                    child: const Text("Rate"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
