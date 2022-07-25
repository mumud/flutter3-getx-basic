import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 70),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/images/login-vector.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Silahkan masuk dengan nomor telkomsel kamu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Nomor HP",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "EX: 08123456789",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.phone_android,
                  color: Color(0xFF747D8C),
                ),
              ),
              onChanged: (value) {},
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.termController.value,
                    onChanged: (value) => controller.termController.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Klik syarat"),
                                },
                          text: "syarat, ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Klik ketentuan"),
                                },
                          text: "ketentuan, ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: "dan ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {
                                  print("Klik privasi"),
                                },
                          text: "privasi ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: "Telkomsel.",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "MASUK",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: controller.submit ? Colors.white : Color(0xFF747D8C),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary:
                    controller.submit ? Color(0xFFEC2028) : Color(0xFFE4E5EA),
                elevation: 0,
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Atau masuk menggunakan",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/facebook.png",
                        height: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3B5998),
                        ),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/twitter.png",
                        height: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1DA1F2),
                        ),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
