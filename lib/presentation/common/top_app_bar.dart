import 'package:flutter/material.dart';

import '../../core/shared/components/button/underlined_text_button.dart';
import '../../core/app/app_colors.dart';
import '../home/state/sample/home_sample_data.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  static const title = 'hardy tech';
  static const selectedItem = 'Blog';

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: AppBar(
        backgroundColor: AppColors.black,
        toolbarHeight: preferredSize.height,
        title: _buildAppBarTitle(),
        bottom: _buildAppBarDivider(),
        actions: _buildActions(),
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return Text(title, style: TextStyle(color: Colors.white));
  }

  PreferredSizeWidget _buildAppBarDivider() {
    return PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(),
    );
  }

  List<Widget> _buildActions() {
    return [
      ...navItems.map(
            (item) => UnderlinedTextButton(
          textColor: AppColors.lightSlateBlueGray,
          focusColor: AppColors.white,
          buttonText: item,
          isUnderlined: item == selectedItem,
        ),
      ),
    ];
  }
}
