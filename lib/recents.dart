import 'package:flutter/material.dart';

import 'all.dart';
import 'missed.dart';


class RecentPage extends StatefulWidget {
  const RecentPage({Key? key}) : super(key: key);

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return DefaultTabController(
      length: 2,
      child: Scaffold(

        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const SizedBox(width: 120,),
                  Container(
                    height: 38,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade600
                      ), tabs: const [
                      Tab(child: Text("All", style: TextStyle(
                          fontSize: 16.7,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),),
                      Tab(child: Text("Missed", style: TextStyle(
                          fontSize: 15.7,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),)
                    ],
                      controller: tabController,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ),
                  const SizedBox(width: 40,),
                  TextButton(onPressed: (){},
                      child: const Text("Edit",
                      style: TextStyle(
                        fontSize: 19
                      ),))
                ],
              ))
        ),
        body: TabBarView(
            controller: tabController,
            children: const [
              AllPage(
              ),
              Missed()
            ],
          ),

      ),
    );
  }
}
