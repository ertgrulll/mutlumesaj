import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/customization_bloc/customization_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/widgets/custom_back_button.dart';
import 'package:mutlumesaj/screens/inspiration/widgets/font_box.dart';

class CustomizationView extends StatefulWidget {
  const CustomizationView({super.key});

  @override
  State<CustomizationView> createState() => _CustomizationViewState();
}

class _CustomizationViewState extends State<CustomizationView> {
  final _bgOptions = List.generate(7, (i) => 'assets/bg-${i + 1}.jpg');
  final _colors = const [
    Color(0xFF7AA0CB),
    Color(0xFFFB6F92),
    Color(0xFF77DD77),
    Color(0xFFFAC898),
    Color(0xFF202633),
  ];
  final _fonts = [
    "Quicksand",
    "Roboto",
    "Indie Flower",
    "Pacifico",
    "Raleway",
    "Caveat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: BlocBuilder<CustomizationBloc, CustomizationState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomBackButton(
                          iconColor: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Temanı belirle",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Renkler",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (_, __) => const SizedBox(width: 10),
                      itemBuilder: (context, index) {
                        final color = _colors[index];

                        return GestureDetector(
                          onTap: () {
                            context
                                .read<CustomizationBloc>()
                                .add(CustomizationEvent.setColor(color));
                          },
                          child: Container(
                            width: 40,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: state.color == color
                                  ? [
                                      BoxShadow(
                                        color: color.withOpacity(.2),
                                        blurRadius: 10,
                                        spreadRadius: 5,
                                      ),
                                    ]
                                  : null,
                            ),
                            child: state.color == color
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 18,
                                  )
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 32),
                        Text(
                          "Görseller",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: _bgOptions.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 10),
                      itemBuilder: (context, index) {
                        final bg = _bgOptions[index];

                        return GestureDetector(
                          onTap: () {
                            context
                                .read<CustomizationBloc>()
                                .add(CustomizationEvent.setBackgroundImage(bg));
                          },
                          child: SizedBox(
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    bg,
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 190,
                                  ),
                                  if (state.background == bg) ...[
                                    Container(
                                      constraints:
                                          const BoxConstraints.expand(),
                                      color: Colors.black.withOpacity(.4),
                                    ),
                                    const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 28),
                        Text(
                          "Yazı tipleri",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 73,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: _fonts.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 10),
                      itemBuilder: (_, index) {
                        final font = _fonts[index];
                        final isSelected = state.fontFamily == font;

                        return FontBox(
                          key: ValueKey("$font$isSelected"),
                          fontFamily: font,
                          isSelected: isSelected,
                          onTap: () {
                            context
                                .read<CustomizationBloc>()
                                .add(CustomizationEvent.setFontFamily(font));
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
