import 'package:flutter/material.dart';

import '../../constrains.dart';
import '../../utils/all_data.dart';
import '../../utils/back_draw.dart';
import '../../utils/functions.dart';
import '../info/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String filter = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackGroundDraw(
              colorTop: yellowBase.withOpacity(.7),
            ),
            _body(),
          ],
        ),
      ),
    );
  }

  _body() {
    return Column(
      children: [
        _filterSearch(),
        const SizedBox(
          height: 18,
        ),
        _homeText(),
        const SizedBox(
          height: 18,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: _cardsEntries(),
          ),
        )
      ],
    );
  }

  _filterSearch() {
    return Padding(
      padding: const EdgeInsets.only(top: 54),
      child: Row(
        children: [
          const SizedBox(
            width: 28,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(hintText: 'Busca'),
                  onChanged: (String? value) {
                    setState(() {
                      filter = value ?? '';
                    });
                  },
                ),
              ),
            ),
          ),
          /*ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              primary: pinkBase,
            ),
            onPressed: () {},
            child: const Icon(Icons.search),
          ),*/
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  _homeText() {
    return const Text(
      "Tudo para sua saúde dental",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }

  _cardsEntries() {
    return Wrap(
      children: _topicList(),
    );
  }

  _topicList() {
    int k = 0;
    List<Widget> cardsTopic = [];
    for (final top in topics) {
      for (final subTop in top.periods) {
        if (filter == '' ||
            (top.title.toUpperCase().contains(filter.toUpperCase()) ||
                subTop.title.toUpperCase().contains(filter.toUpperCase()))) {
          k++;
          cardsTopic.add(
            _card(
              topic: subTop,
              color: cardsColors[k % 4],
              mainTitle: top.title,
            ),
          );
        }
      }
    }
    return cardsTopic;
  }

  _card({
    required PeriodData topic,
    required Color color,
    required String mainTitle,
  }) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .215,
      width: MediaQuery.of(context).size.width / 2.35,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .21,
            width: MediaQuery.of(context).size.width / 2.4,
            child: Card(
              color: color.withOpacity(0.65),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Icon(
                        Icons.circle,
                        color: Colors.white.withOpacity(0.2),
                        size: mediaQuery(context, 0.35),
                      ),
                    ),
                    Center(
                      child: Hero(
                        tag: topic.assetsPath,
                        child: Image.asset(
                          topic.assetsPath,
                          fit: BoxFit.contain,
                          height: mediaQuery(context, 0.25),
                          color: Colors.white.withOpacity(0.9),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                color: pinkBase,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    topic.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 450),
                      pageBuilder: (context, animation, _) {
                        return FadeTransition(
                          opacity: animation,
                          child: InfoView(
                            topic: topic,
                            color: color.withOpacity(.65),
                            mainTitle: mainTitle,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
