import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/category_bloc/category_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/bloc/customization_bloc/customization_bloc.dart';
import 'package:mutlumesaj/screens/inspiration/views/quotes_view.dart';

class InspirtaionsPage extends StatelessWidget {
  const InspirtaionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(
            repository: RepositoryProvider.of(context),
          ),
        ),
        BlocProvider(create: (context) => CustomizationBloc()),
      ],
      child: const QuotesView(),
    );
  }
}
