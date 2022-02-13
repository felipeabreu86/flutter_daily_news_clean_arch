import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/src/presentation/views/breaking_news_view.dart';

class AppRoutes {
  Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const BreakingNewsView());
      //case '/ArticleDetailsView':
      //  return _materialRoute(
      //    ArticleDetailsView(article: settings.arguments! as Article),
      //  );
      case '/SavedArticlesView':
        return _materialRoute(const BreakingNewsView());
    }
    throw Exception("Page not found.");
  }

  Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
