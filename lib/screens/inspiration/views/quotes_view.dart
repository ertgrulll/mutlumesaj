import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/category_bloc/category_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/customization_bloc/customization_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/data/repository/inspiration_repository.dart';
import 'package:mutlumesaj/screens/inspiration/model/quotes/quotes.dart';
import 'package:mutlumesaj/screens/inspiration/model/tag/tag.dart';
import 'package:mutlumesaj/screens/inspiration/views/categories_view.dart';
import 'package:mutlumesaj/screens/inspiration/views/customization_view.dart';
import 'package:mutlumesaj/screens/inspiration/widgets/custom_back_button.dart';
import 'package:mutlumesaj/screens/inspiration/widgets/custom_menu_button.dart';
import 'package:share_plus/share_plus.dart';

class QuotesView extends StatefulWidget {
  const QuotesView({super.key});

  @override
  State<QuotesView> createState() => _QuotesViewState();
}

class _QuotesViewState extends State<QuotesView> {
  final _pagingController = PagingController<int, Result>(firstPageKey: 1);
  final _progressIndicator = const Center(
    child: CupertinoActivityIndicator(
      color: Colors.white,
      radius: 12,
    ),
  );
  List<Tag> _selectedTags = [];
  final _favorites = <Result>[];
  Result? _currentContent;

  @override
  void initState() {
    _pagingController.addPageRequestListener(_fetchPage);

    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();

    super.dispose();
  }

  Future<void> _fetchPage(int page) async {
    try {
      final newItems = await context.read<InspirationRepository>().getQuotes(
            page: page,
            tags: _selectedTags.map((e) => e.slug!).toList(),
          );

      final isLastPage = newItems.count! < 20;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.results!);
      } else {
        _pagingController.appendPage(newItems.results!, ++page);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BlocBuilder<CustomizationBloc, CustomizationState>(
        builder: (_, customization) {
          return Stack(
            fit: StackFit.expand,
            children: [
              customization.background == null
                  ? ColoredBox(
                      color: customization.color!,
                    )
                  : Image.asset(
                      customization.background!,
                      fit: BoxFit.fitHeight,
                    ),
              BlocListener<CategoryBloc, CategoryState>(
                listener: (context, state) {
                  state.maybeWhen(
                    loaded: (_, selectedTags) {
                      if (!listEquals(selectedTags, _selectedTags)) {
                        _selectedTags = selectedTags;
                        _currentContent = null;
                        _pagingController.refresh();
                      }
                    },
                    orElse: () => null,
                  );
                },
                child: PagedPageView(
                  scrollDirection: Axis.vertical,
                  pagingController: _pagingController,
                  onPageChanged: (page) {
                    final index = page.round();
                    setState(() {
                      _currentContent = _pagingController.itemList![index];
                    });
                  },
                  builderDelegate: PagedChildBuilderDelegate<Result>(
                    firstPageProgressIndicatorBuilder: (_) =>
                        _progressIndicator,
                    newPageProgressIndicatorBuilder: (_) => _progressIndicator,
                    itemBuilder: (context, item, index) {
                      if (_currentContent == null) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          setState(() => _currentContent = item);
                        });
                      }

                      return Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 96,
                          height: MediaQuery.of(context).size.height * 0.8,
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            item.content!,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 15,
                            maxFontSize: 28,
                            minFontSize: 18,
                            style: GoogleFonts.getFont(customization.fontFamily)
                                .copyWith(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.83),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return BlocProvider.value(
                                value: context.read<CategoryBloc>()
                                  ..add(const CategoryEvent.fetch()),
                                child: const CategoriesView(),
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              blurRadius: 0,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Text(
                          'Kategoriler',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return BlocProvider<CustomizationBloc>.value(
                                value: context.read(),
                                child: const CustomizationView(),
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          Icons.palette_outlined,
                          size: 18,
                          color: Colors.lightBlue.shade200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 16,
                    left: 24,
                  ),
                  child: const CustomBackButton(),
                ),
              ),
              if (_currentContent != null)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + 16,
                      right: 24,
                    ),
                    child: CustomMenuButton(
                      onSharePressed: () {
                        _onSharePressed(_currentContent!.content!);
                      },
                      onFavoritePressed: () {
                        _onFavoritePressed(_currentContent!);
                      },
                      isFavorite: () {
                        return _favorites.contains(_currentContent);
                      }(),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  void _onFavoritePressed(Result result) {
    setState(() {
      if (_favorites.contains(result)) {
        _favorites.remove(result);
      } else {
        _favorites.add(result);
      }
    });
  }

  void _onSharePressed(String content) => Share.share(content);
}
