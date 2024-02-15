import 'package:airplane/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const customBottomNavigationItem({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.read<PageCubit>().state;

    Color getBarColor() {
      return currentIndex == index ? kPrimaryColor : kTransparentColor;
    }

    Color getIconColor() {
      return currentIndex == index ? kPrimaryColor : kGreyColor;
    }

    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: getIconColor(),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: getBarColor(),
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
