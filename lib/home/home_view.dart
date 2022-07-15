import 'package:creditclan_test/home/type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFdaf0ff),
        appBar: AppBar(
          backgroundColor: const Color(0xFFdaf0ff),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFFdaf0ff),
            statusBarIconBrightness: Brightness.dark,
          ),
          title: const Text(
            'Hi Alex',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.person,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
          ],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('Good Morning ☁️'),
                          const Spacer(),
                          const Text('Hide balance'),
                          Switch(value: false, onChanged: (bool vale) {})
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        '₦0.00',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFdaf0ff),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(child: Text('Transfer'))),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                  'Fund Wallet',
                                  style: TextStyle(color: Colors.white),
                                ))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xFF51A8FF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Finish Account setup'),
                                    Icon(Icons.arrow_right)
                                  ]),
                              const Text(
                                  'Please complete your KYC to transfer or withdraw'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    indicatorColor: Colors.transparent,
                    indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    labelColor: Colors.black,
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        text: 'Quick actions',
                      ),
                      Tab(
                        text: 'Transactions',
                      ),
                    ]),
              ),
              SizedBox(
                height: height * 0.40,
                child: TabBarView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Tile(
                                color: Colors.orangeAccent,
                                text1: 'Borrow',
                                text2: 'Loan application accepted',
                                text3: 'View offer',
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Tile(
                                  color: Colors.green,
                                  text1: 'Save',
                                  text2: 'Earn up to 15.5% per annum',
                                  text3: 'Start'),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Tile(
                                color: Colors.red,
                                text1: 'Borrow',
                                text2: 'Loan application accepted',
                                text3: 'View offer',
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Tile(
                                  color: Colors.blue,
                                  text1: 'Save',
                                  text2: 'Earn up to 15.5% per annum',
                                  text3: 'Start'),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
