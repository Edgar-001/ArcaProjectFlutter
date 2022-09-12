import 'package:flutter/material.dart';
import 'package:flutter_arca_ui/pages/account_page.dart';
import 'package:flutter_arca_ui/pages/cards_page.dart';
import 'package:flutter_arca_ui/pages/groups_page.dart';
import 'package:flutter_arca_ui/pages/payments_page.dart';
import 'package:flutter_arca_ui/pages/transfers_page.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String textTitle = 'Cards';
  Widget actionIcon = IconButton(
    icon: const Icon(Icons.playlist_add),
    onPressed: () {},
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(textTitle),
          actions: [actionIcon],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: Material(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: TabBar(
                onTap: (final index) async {
                  switch (index) {
                    case 0:
                      textTitle = 'Transfer';
                      // ignore: unused_local_variable
                      actionIcon = const SizedBox();
                      break;
                    case 1:
                      textTitle = 'Payments';
                      actionIcon = const SizedBox();
                      break;
                    case 2:
                      textTitle = 'Cards';
                      actionIcon = IconButton(
                        icon: const Icon(Icons.playlist_add),
                        onPressed: () {},
                      );

                      break;
                    case 3:
                      textTitle = 'Groups';
                      actionIcon = const SizedBox();
                      break;
                    case 4:
                      textTitle = 'Account';
                      actionIcon = IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                      );
                      break;
                    default:
                  }

                  setState(() {});
                },
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(fontSize: 10),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const Tab(
                    icon: Icon(Icons.sync_alt),
                    text: 'Transfers',
                  ),
                  const Tab(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    text: 'Payments',
                  ),
                  const Tab(
                    icon: Icon(Icons.credit_card),
                    text: 'Cards',
                  ),
                  const Tab(
                    icon: Icon(Icons.folder_open),
                    text: 'Groups',
                  ),
                  const Tab(
                    icon: Icon(Icons.person_pin),
                    text: 'Account',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            TransfersTab(),
            PaymentsTab(),
            CardsTab(),
            GroupsTab(),
            AccountTab(),
          ],
        ),
      ),
    );
  }
}
