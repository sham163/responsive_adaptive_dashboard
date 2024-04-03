import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_dashboard/widgets/active_and_inactive_drawer_item_widget.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
                    : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

