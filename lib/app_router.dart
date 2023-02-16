

import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/home/data/repos/home_repo_impl.dart';
import 'Features/home/presentation/views/home_view.dart';
import 'Features/search/presentation/views/search_view.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/models/book_model/book_model.dart';
import 'features/home/presentation/manager/smilar books cubit/similar_books_cubit.dart';
import 'package:go_router/go_router.dart';

import 'features/splash/presentation/view model/views/widgets/splash_view.dart';

class AppRouter {
  static const homeview = '/homeview';
  static const bookdetails = '/bookdetails';
  static const searchview = '/searchview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeview,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
        path: bookdetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(bookmodel: state.extra as BookModel,)
        ),
      ),
    GoRoute(
      path: searchview,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
