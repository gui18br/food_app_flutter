import 'package:get/get.dart';

class RootController extends GetxController {
  var tabIndex = 0.obs;
  List tabs = [];

  onRender() {
    tabs = ["assets"];
  }

  @override
  void onInit() {
    super.onInit();
  }
}
