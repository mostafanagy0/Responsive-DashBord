import 'package:flutter/material.dart';
import 'package:resposive_dashbord/models/drawer_item_model.dart';
import 'package:resposive_dashbord/utils/assets.dart';
import 'package:resposive_dashbord/widgets/active_and_inactive_drawer_item.dart';
import 'package:resposive_dashbord/widgets/drawer_items_list_view.dart';
import 'package:resposive_dashbord/widgets/user_info_list_tile.dart';

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
                titel: 'Lekan Okeowo',
                subTitel: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesSettings,
                          title: 'Setting system')),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesLogout, title: 'Logout account')),
                  SizedBox(
                    height: 48,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
