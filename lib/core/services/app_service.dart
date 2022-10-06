import 'package:flutter/material.dart';
import 'package:pokemon_index/routes/app_pages.dart';

abstract class AppService{
  AppService._();
  static BuildContext get context => AppPages.router.routerDelegate.navigatorKey.currentContext!;

  static Object? get argument => AppPages.router.routerDelegate.currentConfiguration.last.extra;

  static Map<String,String> get queryParams => AppPages.router.routerDelegate.currentConfiguration.last.queryParams;

  static Map<String,String> get pathParams => AppPages.router.routerDelegate.currentConfiguration.last.decodedParams;

  static bool get hasQuery => AppPages.router.routerDelegate.currentConfiguration.location.hasQuery;

  static String get path => AppPages.router.routerDelegate.currentConfiguration.location.path;
}