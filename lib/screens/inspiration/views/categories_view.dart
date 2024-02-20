import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/category_bloc/category_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/widgets/custom_back_button.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return state.when(
              loading: () {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              },
              error: (error) {
                return Center(
                  child: Text(error),
                );
              },
              loaded: (tags, selectedTags) {
                return SingleChildScrollView(
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
                        "Kategoriler",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Mesaj Kategorileri",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(height: 24),
                      StaggeredGrid.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        children: List.generate(
                          tags.length,
                          (index) {
                            final tag = tags[index];

                            return GestureDetector(
                              onTap: () {
                                context.read<CategoryBloc>().add(
                                      CategoryEvent.select(tag: tag),
                                    );
                              },
                              child: Container(
                                width: index % 2 == 0 ? 200 : 100,
                                height: index % 2 == 0 ? 200 : 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/bg-${index % 7 + 1}.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (selectedTags.any(
                                        (t) => t.slug == tag.slug)) ...const [
                                      Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      SizedBox(width: 10),
                                    ],
                                    Text(
                                      tag.name!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
