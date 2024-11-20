import 'package:circuit_electricial_box/utils/app_size_utils.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  late final Color? backgroundColor;
  late final Color? itemColor;
  late final List<BottomNavItem> children;
  late final Function(int)? onPageChange;
  late final int? currentIndex;

  BottomNavBar(
      {super.key,
      this.backgroundColor,
      this.itemColor,
      this.onPageChange,
      this.currentIndex,
      required this.children});
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 10.0.h,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        border: Border(
          top: BorderSide(
            width: 0.1,
            color: colorScheme.onSurface,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children.map((item) {
          Color color = colorScheme.primary;
          int index = children.indexOf(item);
          return InkWell(
            onTap: () {
              _changeIndex(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: currentIndex == index
                  ? MediaQuery.of(context).size.width / children.length
                  : 50,
              padding: const EdgeInsets.only(left: 12, right: 12),
              margin: const EdgeInsets.only(top: 24, bottom: 24),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? color.withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    item.icon,
                    color:
                        currentIndex == index ? color : color.withOpacity(0.8),
                  ),
                  currentIndex == index
                      ? Expanded(
                          flex: 2,
                          child: Text(
                            item.label ?? '',
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.0.sp,
                              color: currentIndex == index
                                  ? color
                                  : color.withOpacity(0.5),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void _changeIndex(int index) {
    if (onPageChange != null) {
      onPageChange!(index);
    }
  }
}

class BottomNavItem {
  const BottomNavItem({required this.icon, this.label, this.color});
  final IconData icon;
  final String? label;
  final Color? color;
}
