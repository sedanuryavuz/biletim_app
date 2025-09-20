import 'package:biletim_app/features/search/presentation/search_page.dart';
import 'package:biletim_app/features/splash/presentation/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/search_results/domain/repositories/search_repository_impl.dart';
import '../../features/search_results/domain/usecases/get_search_results.dart';
import '../../features/search_results/presentation/pages/search_results_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/search',
      name: 'search',
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
      path: '/results',
      name: 'results',
      builder: (context, state) {
        final from = state.uri.queryParameters['from'] ?? '';
        final to = state.uri.queryParameters['to'] ?? '';
        final dateString = state.uri.queryParameters['date'] ?? '';
        final date = DateTime.tryParse(dateString) ?? DateTime.now();

        final repository = SearchRepositoryImpl();
        final getSearchResults = GetSearchResults(repository);

        return SearchResultsPage(
          from: from,
          to: to,
          date: date,
          getSearchResults: getSearchResults,
        );
      },
    ),
  ],
);
