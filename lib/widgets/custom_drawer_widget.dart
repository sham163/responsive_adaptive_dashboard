import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/utils/app_images.dart';
import 'package:responsive_adaptive_dashboard/widgets/active_and_inactive_drawer_item_widget.dart';
import 'package:responsive_adaptive_dashboard/widgets/drawer_item_list_view_widget.dart';
import 'package:responsive_adaptive_dashboard/widgets/user_info_list_tile_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, title: 'Setting system'),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
