import 'package:DevQuiz/home/widgets/appbar/appbar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:16),
            child: Column(
              children: [
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LevelButtonWidget(label: "Fácil"),
                      LevelButtonWidget(label: "Médio"),
                      LevelButtonWidget(label: "Difícil"),
                      LevelButtonWidget(label: "Perito"),
                    ],
                  ),
                
                Expanded(
                                child: GridView.count(
                                  crossAxisCount:2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 16,
                    children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                    ]
                  ),
                )
                
              ],
            ),
          ),
        );
  }
}
