import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  //NOTE: 0 = Available, 1 = Selected, 2 = Unavailable

  final int status;
  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailaibleColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailaibleColor;
        default:
          return kUnavailaibleColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailaibleColor;
        default:
          return kUnavailaibleColor;
      }
    }

    return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor(),
          border: Border.all(
            color: borderColor(),
            width: 2,
          ),
        ),
        child: status == 1
            ? Center(
                child: Text(
                  'You',
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
              )
            : SizedBox());
  }
}
