import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AnimatedAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.action,
  }) : super(key: key);

  final Widget title;
  final Widget? leading;
  final Widget? action;

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(_animationController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _animationBuilder(
        position: _slideAnimation,
        opacity: _fadeAnimation,
        child: widget.leading ??
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(Ionicons.return_up_back),
            ),
      ),
      title: _animationBuilder(
        opacity: _fadeAnimation,
        child: widget.title,
        position: _slideAnimation,
      ),
      actions: [
        _animationBuilder(
            opacity: _fadeAnimation,
            position: _slideAnimation,
            child: widget.action)
      ],
    );
  }

  Widget _animationBuilder(
          {required Animation<double> opacity,
          required position,
          Widget? child}) =>
      SlideTransition(
        position: position,
        child: FadeTransition(
          opacity: opacity,
          child: child,
        ),
      );
}
