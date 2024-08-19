import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

NewsController newsController = Get.put(NewsController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xff202020),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
          title: Container(
            alignment: Alignment.centerLeft,
            height: 80,
            width: 120,
            child: Image.asset(
              'assets/hunt.png',
            ),
          ),
          backgroundColor: const Color(0xff202020),
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: Colors.white70,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  'Apple',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Text(
                'Tesla',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Business',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'HeadLine',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Stock',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FutureBuilder(
              future: newsController.appleMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModal.articles.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        newsController.selectedIndex(index);
                        newsController.urlLaunch(newsController.newsModal
                            .articles[newsController.selectIndex].url);
                        // Get.toNamed('/detail');
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 18.0,
                                    ),
                                    child: Container(
                                      height: 185,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: (newsController
                                                      .newsModal
                                                      .articles[index]
                                                      .urlToImage ==
                                                  '')
                                              ? null
                                              : BoxFit.cover,
                                          image: (newsController
                                                      .newsModal
                                                      .articles[index]
                                                      .urlToImage ==
                                                  '')
                                              ? NetworkImage(
                                                  'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png',
                                                  scale: 4)
                                              : NetworkImage(
                                                  '${newsController.newsModal.articles[index].urlToImage}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    newsController
                                        .newsModal.articles[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        newsController.newsModal.articles[index]
                                            .source.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.messenger_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset('assets/whatsapp.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white54,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.businessMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModal.articles.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        newsController.selectedIndex(index);
                        newsController.urlLaunch(newsController.newsModal
                            .articles[newsController.selectIndex].url);
                        // Get.toNamed('/detail');
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 18.0,
                                    ),
                                    child: Container(
                                      height: 185,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? null
                                              : BoxFit.cover,
                                          image: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? NetworkImage(
                                              'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png',
                                              scale: 4)
                                              : NetworkImage(
                                              '${newsController.newsModal.articles[index].urlToImage}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    newsController
                                        .newsModal.articles[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        newsController.newsModal.articles[index]
                                            .source.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.messenger_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset('assets/whatsapp.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white54,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.headLineMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModal.articles.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        newsController.selectedIndex(index);
                        newsController.urlLaunch(newsController.newsModal
                            .articles[newsController.selectIndex].url);
                        // Get.toNamed('/detail');
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 18.0,
                                    ),
                                    child: Container(
                                      height: 185,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? null
                                              : BoxFit.cover,
                                          image: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? NetworkImage(
                                              'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png',
                                              scale: 4)
                                              : NetworkImage(
                                              '${newsController.newsModal.articles[index].urlToImage}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    newsController
                                        .newsModal.articles[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        newsController.newsModal.articles[index]
                                            .source.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.messenger_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset('assets/whatsapp.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white54,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.wallMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModal.articles.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        newsController.selectedIndex(index);
                        newsController.urlLaunch(newsController.newsModal
                            .articles[newsController.selectIndex].url);
                        // Get.toNamed('/detail');
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 18.0,
                                    ),
                                    child: Container(
                                      height: 185,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? null
                                              : BoxFit.cover,
                                          image: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? NetworkImage(
                                              'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png',
                                              scale: 4)
                                              : NetworkImage(
                                              '${newsController.newsModal.articles[index].urlToImage}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    newsController
                                        .newsModal.articles[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        newsController.newsModal.articles[index]
                                            .source.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.messenger_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset('assets/whatsapp.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white54,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.teslaMap(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModal.articles.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        newsController.selectedIndex(index);
                        newsController.urlLaunch(newsController.newsModal
                            .articles[newsController.selectIndex].url);
                        // Get.toNamed('/detail');
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 18.0,
                                    ),
                                    child: Container(
                                      height: 185,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? null
                                              : BoxFit.cover,
                                          image: (newsController
                                              .newsModal
                                              .articles[index]
                                              .urlToImage ==
                                              '')
                                              ? NetworkImage(
                                              'https://direct.dailyhunt.in/assets/selfserve/img/dailyhunt-logo-white.png',
                                              scale: 4)
                                              : NetworkImage(
                                              '${newsController.newsModal.articles[index].urlToImage}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    newsController
                                        .newsModal.articles[index].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        newsController.newsModal.articles[index]
                                            .source.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.messenger_outline,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset('assets/whatsapp.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white54,
                            indent: 15,
                            endIndent: 15,
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
