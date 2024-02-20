import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    this.iconColor,
    super.key,
  });

  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.maybePop(context);
      },
      child: Container(
        width: 45,
        height: 45,
        alignment: const Alignment(.15, 0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.15),
          border: Border.all(
            color: iconColor != null
                ? iconColor!.withOpacity(.2)
                : Colors.white.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(
          Icons.arrow_back_ios,
          size: 12,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}
