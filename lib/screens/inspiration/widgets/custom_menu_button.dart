import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton({
    required this.onSharePressed,
    required this.onFavoritePressed,
    required this.isFavorite,
    super.key,
  });

  final VoidCallback onSharePressed;
  final VoidCallback onFavoritePressed;
  final bool isFavorite;

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late bool isFavorite = widget.isFavorite;

  @override
  void didUpdateWidget(covariant CustomMenuButton oldWidget) {
    if (oldWidget.isFavorite != widget.isFavorite) {
      isFavorite = widget.isFavorite;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [
              RotationTransition(
                turns: Tween(begin: .25, end: 0.0).animate(_controller),
                child: GestureDetector(
                  onTap: () {
                    if (_controller.isDismissed) {
                      _controller.forward();
                    } else {
                      _controller.reverse();
                    }
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                        .3 * math.sin(_controller.value * math.pi) + .15,
                      ),
                      border: Border.all(
                        color: Colors.white.withOpacity(.5),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              if (_controller.value != 0) ...[
                Positioned(
                  top: _controller.value * 55,
                  child: FadeTransition(
                    opacity: Tween(begin: .0, end: 1.0).animate(_controller),
                    child: _buildActionButton(
                      Icons.share_outlined,
                      widget.onSharePressed,
                    ),
                  ),
                ),
                Positioned(
                  top: _controller.value * 110,
                  right: 0,
                  child: FadeTransition(
                    opacity: Tween(begin: .0, end: 1.0).animate(_controller),
                    child: _buildActionButton(
                      isFavorite ? Icons.star : Icons.star_border_outlined,
                      () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });

                        widget.onFavoritePressed();
                      },
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _buildActionButton(IconData iconData, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 45,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            iconData,
            size: 24,
            color: Colors.lightBlue.shade200,
          ),
        ),
      ),
    );
  }
}
