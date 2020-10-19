import 'package:flutter/material.dart';

class DIYTransformerWidget extends StatelessWidget {
  final PageController pageController;
  final List<Color> colors;
  final List<String> picUrls;
  final double backgroundHeight;
  final double picHeight;

  DIYTransformerWidget({
    @required this.pageController,
    @required this.colors,
    @required this.picUrls,
    @required this.backgroundHeight,
    @required this.picHeight,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double page = 0;
        int realPage = 0;
        if (pageController.hasClients) {
          print("AnimatedBuilder hasClients true");
          page = pageController?.page ?? 0;
          realPage = pageController?.page?.floor() ?? 0;
        } else {
          print("AnimatedBuilder hasClients false");
          page = pageController?.initialPage?.toDouble() ?? 0;
          realPage = pageController?.initialPage ?? 0;
        }
        double opacity = 1 - (page - realPage).abs();
        Widget child = Stack(
          children: <Widget>[
            Opacity(
              opacity: opacity,
              child: Container(
                width: width,
                height: backgroundHeight,
                color: colors[realPage],
              ),
            ),
            Opacity(
              opacity: 1 - opacity,
              child: Container(
                width: width,
                height: backgroundHeight,
                color: colors[realPage + 1],
              ),
            ),
            Opacity(
              opacity: opacity,
              child: Image.network(
                picUrls[realPage],
                width: width,
                height: picHeight,
                fit: BoxFit.fitWidth,
              ),
            ),
            Opacity(
              opacity: 1 - opacity,
              child: Image.network(
                picUrls[realPage + 1],
                width: width,
                height: picHeight,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        );
        return child;
      },
    );
  }
}
