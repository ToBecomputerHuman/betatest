
import 'package:flutter/material.dart';
import '../constant/colors.dart';

import 'package:beta/screans/home.dart';
import 'package:beta/screans/list.dart';
import 'package:beta/screans/setting.dart';
import '../screans/study.dart';

class bottomBar extends StatelessWidget {
  final int page;
  bottomBar({required this.page});

  void _iconsTapped(BuildContext context, int idx) {
    late Widget nextPage;
    switch (idx) {
      case 0:
        nextPage = Home();
        break;
      case 1:
        nextPage = ProblemList();
        break;
      case 2:
        nextPage = Study();
        break;
      default:
        nextPage = Setting();
        break;
    }

    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => nextPage,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(context,
              icon: Icons.home_outlined,
              label: "Home",
              index: 0,
          ),
          _buildNavItem(context,
            icon: Icons.list_rounded,
            label: "List",
            index: 1,
          ),
          _buildNavItem(context,
            icon: Icons.library_add_check_outlined,
            label: "Home",
            index: 2,
          ),
          _buildNavItem(context,
            icon: Icons.settings,
            label: "Home",
            index: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context,
      {required IconData icon, required String label, required int index}) {
    final bool isSelected = index == page;
    return GestureDetector(
      onTap: () => _iconsTapped(context, index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Color_1 : Colors.grey,
            size: 35,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Color_1 : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}