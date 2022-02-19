import 'package:digital_gram/LoginPage/LoginPage.dart';
import 'package:digital_gram/SideMenu/DashBoard.dart';
import 'package:digital_gram/SideMenu/Download.dart';
import 'package:digital_gram/SideMenu/Files.dart';
import 'package:digital_gram/SideMenu/Profile.dart';
import 'package:digital_gram/SideMenu/Settings.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(
                  'DIGITAL GRAM',
                ),
              ),
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const Spacer(),
            const Icon(Icons.search),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: SideMenu(
                controller: page,
                style: SideMenuStyle(
                  displayMode: SideMenuDisplayMode.auto,
                  hoverColor: Colors.blue[100],
                  selectedColor: Colors.lightBlue,
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  selectedIconColor: Colors.white,
                  // backgroundColor: Colors.amber,
                  openSideMenuWidth: 200,
                ),
                title: Column(
                  children: const [
                    Divider(
                      indent: 8.0,
                      endIndent: 8.0,
                    ),
                  ],
                ),
                footer: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Terms and Conditions!',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                items: [
                  SideMenuItem(
                    priority: 0,
                    title: 'Dashboard',
                    onTap: () {
                      page.jumpToPage(0);
                    },
                    icon: Icons.home,
                  ),
                  SideMenuItem(
                    priority: 1,
                    title: 'Profile',
                    onTap: () {
                      page.jumpToPage(1);
                    },
                    icon: Icons.supervisor_account,
                  ),
                  SideMenuItem(
                    priority: 2,
                    title: 'Files',
                    onTap: () {
                      page.jumpToPage(2);
                    },
                    icon: Icons.file_copy_rounded,
                  ),
                  SideMenuItem(
                    priority: 3,
                    title: 'Download',
                    onTap: () {
                      page.jumpToPage(3);
                    },
                    icon: Icons.download,
                  ),
                  SideMenuItem(
                    priority: 4,
                    title: 'Settings',
                    onTap: () {
                      page.jumpToPage(4);
                    },
                    icon: Icons.settings,
                  ),
                  SideMenuItem(
                    priority: 6,
                    title: 'Logout',
                    onTap: () {
                      Get.to(const LoginPage());
                    },
                    icon: Icons.exit_to_app,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  child: const Center(child: DashBoard()),
                ),
                Container(
                  // color: Colors.white,
                  child: const Center(child: Profile()),
                ),
                Container(
                  // color: Colors.white,
                  child: const Center(child: Files()),
                ),
                Container(
                  // color: Colors.white,
                  child: const Center(child: Download()),
                ),
                Container(
                  // color: Colors.white,
                  child: const Center(child: Settings()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
