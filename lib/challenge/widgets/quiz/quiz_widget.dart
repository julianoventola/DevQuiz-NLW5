import 'package:devquiz/challenge/challenge_controller.dart';
import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ChallengeController challengerController;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.challengerController,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              answer: widget.question.answers[i],
              disabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: () {
                indexSelected = i;
                if (widget.question.answers[i].isRight) {
                  widget.challengerController.correctAnswers++;
                }
                setState(() {});
              },
            ),
        ],
      ),
    );
  }
}
