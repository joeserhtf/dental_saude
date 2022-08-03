import 'package:dental_saude/constrains.dart';
import 'package:dental_saude/view/info/custom_header.dart';
import 'package:flutter/material.dart';

import '../../utils/all_data.dart';
import '../../utils/back_draw.dart';

class InfoView extends StatefulWidget {
  const InfoView({Key? key, required this.topic, required this.color, required this.mainTitle}) : super(key: key);

  final PeriodData topic;
  final Color color;
  final String mainTitle;

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  PeriodData get topic => widget.topic;
  Color get color => widget.color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _body(),
      ),
    );
  }

  _body() {
    return Stack(
      children: [
        BackGroundDraw(
          colorTop: color,
        ),
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Hero(
                    tag: topic.assetsPath,
                    child: Material(
                      color: Colors.transparent,
                      child: Image.asset(topic.assetsPath),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 205,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 220,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: _dataOfLearn(),
                  ),
                ),
              ),
              CustomHeader(title: widget.mainTitle),
            ],
          ),
        ),
      ],
    );
  }

  _dataOfLearn() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            widget.mainTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "${topic.title}\n",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  for (final sub in topic.suTopics) ...{
                    Text(
                      "${sub.title}\n",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${sub.info}\n",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(),
                    ),
                  },
                  if (topic.fact != "")
                    Card(
                      elevation: 0,
                      color: yellowBase.withOpacity(.7),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 55,
                              height: 55,
                              child: Image.asset("assets/face.png"),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Text(
                                "Fato curioso: ${topic.fact}",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
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
