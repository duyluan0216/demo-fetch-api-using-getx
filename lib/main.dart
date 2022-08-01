import 'package:flutter/material.dart';
import 'package:getx_fetch/commonmodule/app_color.dart';
import 'package:getx_fetch/commonmodule/app_string.dart';
import 'package:getx_fetch/productmodule/views/product_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
