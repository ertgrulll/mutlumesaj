import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontBox extends StatefulWidget {
  const FontBox({
    required this.onTap,
    required this.fontFamily,
    this.isSelected = false,
    super.key,
  });

  final VoidCallback onTap;
  final String fontFamily;
  final bool isSelected;

  @override
  State<FontBox> createState() => _FontBoxState();
}

class _FontBoxState extends State<FontBox> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.isSelected) {
        _controller.repeat(reverse: true);
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: 73,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: _controller.value * 3,
              color: widget.isSelected
                  ? Colors.lightBlue.shade300
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              child!,
              if (widget.isSelected)
                const Positioned(
                  top: 8,
                  right: 8,
                  child: Center(
                    child: Icon(
                      Icons.check,
                      size: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              "Aa",
              style: GoogleFonts.getFont(widget.fontFamily).copyWith(
                fontSize: 30,
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
