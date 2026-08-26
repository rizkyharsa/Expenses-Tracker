import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import 'modules/home/views/home_view.dart';
import 'modules/profile/views/profile_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: HomeView(),
          item: ItemConfig(icon: const Icon(Icons.home), title: "Home"),
        ),
        PersistentTabConfig(
          screen: HomeView(),
          item: ItemConfig(
            icon: const Icon(Icons.add, color: Colors.white),
            title: "Add",
          ),
        ),
        PersistentTabConfig(
          screen: ProfileView(),
          item: ItemConfig(icon: const Icon(Icons.person), title: "Profile"),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style13BottomNavBar(navBarConfig: navBarConfig),
    );
  }
}
