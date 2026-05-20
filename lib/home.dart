import 'package:flutter/material.dart';
import 'package:job_planner/styles/home_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int eventCount = 0;
  int deadlineCount = 0;
  var eventList = [
    {'time': '10:00', 'company': '리크루트', 'title': 'GitHub 과제 리포지토리 분석', 'priority': Colors.blue},
    {'time': '15:00', 'company': 'NTT데이터', 'title': '온라인 채용 설명회 참석', 'priority': Colors.teal},
  ];
  var dDayList = [
    {'date': '2026:06:04', 'title': 'title1'},
    {'date': '2026:06:12', 'title': 'title2'},
    {'date': '2026:06:26', 'title': 'title3'},
    {'date': '2026:06:12', 'title': 'title2'},
    {'date': '2026:06:26', 'title': 'title3'},
    {'date': '2026:06:12', 'title': 'title2'},
    {'date': '2026:06:26', 'title': 'title3'},
    {'date': '2026:06:12', 'title': 'title2'},
    {'date': '2026:06:26', 'title': 'title3'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: HomeStyles().homeTheme,
      padding: EdgeInsets.all(8),
      width: double.infinity, height: double.infinity,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: HomeStyles().homeBoxBorder,
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      '안녕하세요.👋\n이번 주 일정 $eventCount건, 마감 $deadlineCount건이 있습니다.',
                      style: HomeStyles().homeTitle,
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    width: double.infinity,
                    decoration: HomeStyles().homeBoxBorder,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '오늘의 일정 🎯',
                          style: HomeStyles().homeTitle,
                        ),
                        eventList.isEmpty ? Text('일정이 없습니다.') : ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: eventList.length,
                          itemBuilder: (context, index) {
                            final item = eventList[index];
                            return Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(item['title'] as String)
                                ]
                              )
                            );
                          }
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    width: double.infinity,
                    decoration: HomeStyles().homeBoxBorder,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('디데이 🔥', style: HomeStyles().homeTitle,),
                        dDayList.isEmpty ? Text('일정이 없습니다') : ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: dDayList.length,
                          itemBuilder: (context, index) {
                            final item = dDayList[index];
                            return Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(item['title'] as String)
                                ]
                              )
                            );
                          }
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    width: double.infinity,
                    decoration: HomeStyles().homeBoxBorder,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('이번 달 주요 일정 📆', style: HomeStyles().homeTitle,),
                        dDayList.isEmpty ? Text('일정이 없습니다') : ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: dDayList.length,
                            itemBuilder: (context, index) {
                              final item = dDayList[index];
                              return Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                      children: [
                                        Text(item['title'] as String)
                                      ]
                                  )
                              );
                            }
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
