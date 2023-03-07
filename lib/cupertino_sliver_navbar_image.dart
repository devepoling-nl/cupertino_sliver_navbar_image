library cupertino_sliver_navbar_image;

import 'package:cupertino_sliver_navbar_image/overrides/nav_bar.dart' as nav_bar_override;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CupertinoSliverNavBarImage extends StatelessWidget {
  const CupertinoSliverNavBarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverStack(
      children: [
        const nav_bar_override.CupertinoSliverNavigationBar(
          largeTitle: Text('Betaaloverzicht'),
          backgroundColor: Colors.white,
          // leading: InkWell(
          //   onTap: () => context.popRoute(),
          //   radius: 64,
          //   child: Icon(FontAwesomeIcons.chevronLeft, size: 24, color: TColor.teal500),
          // ),
          automaticallyImplyLeading: false,
          previousPageTitle: 'Dashboard',
          automaticallyImplyTitle: true,
          border: null,
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 148,
            child: Stack(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/262524/pexels-photo-262524.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: -4,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
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
            // padding: const EdgeInsets.only(left: 16, top: 56, bottom: 24),j
            margin: const EdgeInsets.only(
              left: 16,
              top: 48,
            ),
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Icon(
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
