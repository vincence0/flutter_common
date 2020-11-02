import 'package:flutter/material.dart';
import 'package:flutter_common/containers/article_list.dart';
import 'package:flutter_common/containers/article_page.dart';
import 'package:flutter_common/containers/favor_list.dart';
import 'package:flutter_common/containers/publish_page.dart';
import 'package:flutter_common/containers/sign_in.dart';

Map<String, WidgetBuilder> routes = {
  '/articles': (context) => ArticleList(),
  '/article': (context) => ArticlePage(
    articleId: ModalRoute.of(context).settings.arguments
  ),
  '/favors': (context) => FavorList(),
  '/publish': (context) {
    final bool isEdit = ModalRoute.of(context).settings.arguments;
    return PublishPage(isEdit: isEdit ?? false);
  },
  '/sign-in': (context) => SignIn()
};
