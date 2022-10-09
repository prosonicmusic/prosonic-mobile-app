import 'package:flutter/material.dart';
import 'package:prosonic/core/constant/constant.dart';

hSizedBox({double? h}) => SizedBox(height: h ?? 10);

wSizedBox({double? w}) => SizedBox(width: w ?? 10);

divider({Color? color, double? thickness}) => Divider(
      color: color ?? AppConstant.gray,
      height: thickness ?? 2,
      thickness: thickness ?? 2,
    );
