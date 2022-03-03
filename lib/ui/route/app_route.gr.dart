// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:app/data/model/article.dart' as _i10;
import 'package:app/data/model/news.dart' as _i9;
import 'package:app/ui/detail/detail_page.dart' as _i4;
import 'package:app/ui/home/home_page.dart' as _i1;
import 'package:app/ui/news/news_page.dart' as _i5;
import 'package:app/ui/signIn/sign_in_page.dart' as _i3;
import 'package:app/ui/video/music_player.dart' as _i2;
import 'package:app/ui/video/video_page.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    MusicPlayerRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MusicPlayerRouteArgs>(
          orElse: () => MusicPlayerRouteArgs(news: queryParams.get('news')));
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MusicPlayerPage(key: args.key, news: args.news));
    },
    SignInRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i3.SignInPage(),
          fullscreenDialog: true);
    },
    DetailRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<DetailRouteArgs>(
          orElse: () => DetailRouteArgs(article: queryParams.get('article')));
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.DetailPage(key: args.key, article: args.article));
    },
    NewsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.NewsPage());
    },
    VideoRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.VideoPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/', children: [
          _i7.RouteConfig(NewsRoute.name, path: 'news', parent: HomeRoute.name),
          _i7.RouteConfig(VideoRoute.name,
              path: 'player', parent: HomeRoute.name)
        ]),
        _i7.RouteConfig(MusicPlayerRoute.name, path: '/video'),
        _i7.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i7.RouteConfig(DetailRoute.name, path: '/detail')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.MusicPlayerPage]
class MusicPlayerRoute extends _i7.PageRouteInfo<MusicPlayerRouteArgs> {
  MusicPlayerRoute({_i8.Key? key, _i9.News? news})
      : super(name,
            path: '/video',
            args: MusicPlayerRouteArgs(key: key, news: news),
            rawQueryParams: {'news': news});

  static const String name = 'MusicPlayerRoute';
}

class MusicPlayerRouteArgs {
  const MusicPlayerRouteArgs({this.key, this.news});

  final _i8.Key? key;

  final _i9.News? news;
}

/// generated route for [_i3.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for [_i4.DetailPage]
class DetailRoute extends _i7.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i8.Key? key, _i10.Article? article})
      : super(name,
            path: '/detail',
            args: DetailRouteArgs(key: key, article: article),
            rawQueryParams: {'article': article});

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, this.article});

  final _i8.Key? key;

  final _i10.Article? article;
}

/// generated route for [_i5.NewsPage]
class NewsRoute extends _i7.PageRouteInfo<void> {
  const NewsRoute() : super(name, path: 'news');

  static const String name = 'NewsRoute';
}

/// generated route for [_i6.VideoPage]
class VideoRoute extends _i7.PageRouteInfo<void> {
  const VideoRoute() : super(name, path: 'player');

  static const String name = 'VideoRoute';
}
