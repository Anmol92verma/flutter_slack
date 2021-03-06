import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/chat/sk_chat_screen.dart';
import 'package:slack_app/navigation/routes.dart';

class SKHistoryChannel extends StatelessWidget {
  final bool isPrivate;

  const SKHistoryChannel({Key? key, required this.isPrivate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          isPrivate
              ? const Icon(
                  Icons.lock_outline_rounded,
                  size: 16,
                )
              : Text(
                  "#",
                  style: textStyle(),
                ),
          Expanded(
            child: Text(
              "flutter_hyd",
              style: textStyle(),
            ).paddingAll(8),
          ),
        ],
      ).marginOnly(left: 16, bottom: 4),
      onTap: () {
        Get.toNamed(RouteNames.chat);
      },
    );
  }

  TextStyle textStyle() {
    return GoogleFonts.notoSans();
  }
}
