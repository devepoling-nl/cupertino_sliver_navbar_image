library cupertino_sliver_navbar_image;

import 'package:cupertino_sliver_navbar_image/overrides/nav_bar.dart' as nav_bar_override;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CupertinoSliverNavigationBarImage extends StatelessWidget {
  final Widget? largeTitle;

  final Widget? leading;
  final bool automaticallyImplyLeading;
  final bool automaticallyImplyTitle;
  final bool alwaysShowMiddle;

  final String? previousPageTitle;
  final Widget? middle;
  final Widget? trailing;
  final Color? backgroundColor;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final Border? border;
  final bool transitionBetweenRoutes;
  final bool stretch;
  final Widget child;

  const CupertinoSliverNavigationBarImage({
    super.key,
    required this.child,
    this.largeTitle,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.automaticallyImplyTitle = true,
    this.alwaysShowMiddle = true,
    this.previousPageTitle,
    this.middle,
    this.trailing,
    this.border,
    this.backgroundColor = Colors.white,
    this.brightness,
    this.padding,
    this.transitionBetweenRoutes = true,
    this.stretch = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverStack(
      children: [
        nav_bar_override.CupertinoSliverNavigationBar(
          key: key,
          largeTitle: largeTitle,
          leading: null,
          automaticallyImplyLeading: false,
          automaticallyImplyTitle: automaticallyImplyTitle,
          alwaysShowMiddle: alwaysShowMiddle,
          previousPageTitle: previousPageTitle,
          middle: middle,
          trailing: trailing,
          backgroundColor: backgroundColor,
          brightness: brightness,
          padding: padding,
          border: border,
          transitionBetweenRoutes: transitionBetweenRoutes,
          stretch: stretch,
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 148,
            child: Stack(
              children: [
                child,
                Positioned(
                  bottom: -4,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 16,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPinnedHeader(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 16, top: 48),
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: backgroundColor,
                child: const Icon(
                  CupertinoIcons.chevron_back,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
