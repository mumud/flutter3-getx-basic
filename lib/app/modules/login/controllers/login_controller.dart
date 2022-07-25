import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  var termController = false.obs;
  var submit = false;

  @override
  void onInit() {
    phoneController.addListener(() {
      submit = phoneController.text.isNotEmpty;
    });

    super.onInit();
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
