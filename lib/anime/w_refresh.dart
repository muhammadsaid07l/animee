import 'package:flutter/cupertino.dart';
import 'package:smartrefresh/smartrefresh.dart';

class Wrefresh extends StatelessWidget {
  final RefreshController controller;
  final Widget child;
  final VoidCallback onRefresh;

  const Wrefresh({
    required this.controller,
    required this.child,
    required this.onRefresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PullToRefresh(
      child: child,
      onFail: SizedBox(),
      onComplete: SizedBox(),
      onLoading: const Text(''),
      onRefresh: onRefresh,
      refreshController: controller,
    );
  }
}
