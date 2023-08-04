import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/Navigation_Drawer/navigation_drawer_tile_visual.dart';

class NavigationDrawerWidgets extends StatelessWidget {
  const NavigationDrawerWidgets({super.key});

  @override
  Widget build(context) {
    return ListView(
      children: const [
        NavigationTileVisual(
          text: "Procedure/Protocol",
          Colors.white,
        ),
        NavigationTileVisual(
          text: "Guide",
          Colors.white,
        ),
        NavigationTileVisual(
          text: "About",
          Colors.white,
        ),
      ],
    );
  }
}
