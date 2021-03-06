import 'package:app/data/model/news.dart';
import 'package:app/ui/component/image/image.dart';
import 'package:app/ui/hook/use_l10n.dart';
import 'package:app/ui/hook/use_router.dart';
import 'package:app/ui/route/app_route.dart';
import 'package:app/ui/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArticleItem extends HookConsumerWidget {
  const ArticleItem({
    Key? key,
    this.news,
  }) : super(key: key);

  final News? news;

  static BorderRadius borderRadiusAll = BorderRadius.circular(8);
  static BorderRadius borderRadiusTop = const BorderRadius.only(
    topRight: Radius.circular(8),
    topLeft: Radius.circular(8),
    bottomLeft: Radius.circular(0),
    bottomRight: Radius.circular(0),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final router = useRouter();
    final l10n = useL10n();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadiusAll),
      elevation: 4,
      child: InkWell(
        child: Column(
          children: <Widget>[
            Hero(
              tag: news ?? "",
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: ClipRRect(
                  borderRadius: borderRadiusTop,
                  child: networkImage(news?.snippet?.thumbnails?.high?.url ?? "", fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                news?.snippet?.title ?? l10n.noTitle,
                style: theme.textTheme.h20.dense(),
              ),
            ),
          ],
        ),
        onTap: () => router.push(MusicPlayerRoute(news: news)),
      ),
    );
  }
}
