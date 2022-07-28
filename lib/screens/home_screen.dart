import 'package:flutter/material.dart';

import 'package:video_game_ui/constant.dart';
import 'package:video_game_ui/screens/detail_screen.dart';
import 'package:video_game_ui/screens/view_all_screen.dart';
import 'package:video_game_ui/widget/popular_games.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      left: 16, right: 16, top: 30, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Seja Bem vindo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          Text("Lucas Santana",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.notifications_sharp,
                              color: Colors.white, size: 32),
                          const SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/83018825?v=4'),
                            )
                            // child: Image.asset(
                            //   "assets/images/avatar.png",
                            //   fit: BoxFit.contain,
                            // ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const DefaultTabController(
                  length: 3,
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.red,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.red),
                      insets: EdgeInsets.only(right: 32, left: 14),
                    ),
                    tabs: [
                      Tab(
                        child: Text('Populares'),
                      ),
                      Tab(
                        child: Text('Novidades'),
                      ),
                      Tab(
                        child: Text('Melhores'),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  margin: const EdgeInsets.only(top: 8),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const DetailScreen(),
                                ),
                              );
                            },
                            child: const PopularGamesWidget(
                              imageUrl: "assets/images/cyberpunk.png",
                              category: "Ação",
                              gameName: "Cyberpunk 2077",
                              price: "\$59.99",
                            ),
                          ),
                          const PopularGamesWidget(
                            imageUrl: "assets/images/spiderman.png",
                            category: "Aventura",
                            gameName: "Spiderman",
                            price: "\$67.99",
                          ),
                          const PopularGamesWidget(
                            imageUrl: "assets/images/outrider3.jpg",
                            category: "Battle Royal",
                            gameName: "Outriders",
                            price: "\$72.99",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Meus jogos",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ViewAllScreen()));
                            },
                            child: const Text(
                              "Ver todos",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 100,
                            child: Image.asset(
                              "assets/images/infinite.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 200,
                            height: 100,
                            child: Image.asset(
                              "assets/images/outrider.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


