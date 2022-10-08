import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:prosonic/core/constant/constant.dart';

class MyLoadingIndicator extends StatelessWidget {
  const MyLoadingIndicator({Key? key, this.color, this.size, this.width})
      : super(key: key);
  final Color? color;
  final double? size, width;

  @override
  Widget build(BuildContext context) {
    return SpinKitRing(
      color: color ?? AppConstant.red,
      size: size ?? 35,
      lineWidth: width ?? 1.7,
    );
  }
}
