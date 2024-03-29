import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisnelmoslem/app/modules/fake_hadith/fake_hadith_controller.dart';
import 'package:hisnelmoslem/app/modules/fake_hadith/widgets/hadith_card.dart';
import 'package:hisnelmoslem/app/shared/widgets/empty.dart';

class FakeHadithReadPage extends StatelessWidget {
  final FakeHadithController controller;

  const FakeHadithReadPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.fakeHadithReadList.isEmpty
          ? Empty(
              isImage: false,
              icon: Icons.menu_book,
              title: "you haven't read anything yet".tr,
              description:
                  'The Prophet (may Allah’s peace and blessings be upon him) said: "Whoever tells lies about me intentionally should take his seat in Hellfire."'
                      .tr,
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 10),
              itemBuilder: (context, index) {
                return HadithCard(
                  fakeHaith: controller.fakeHadithReadList[index],
                  scaffoldKey: controller.fakeHadithScaffoldKey,
                );
              },
              itemCount: controller.fakeHadithReadList.length,
            ),
    );
  }
}
