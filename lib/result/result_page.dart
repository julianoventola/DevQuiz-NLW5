import 'package:devquiz/challenge/challenge_controller.dart';
import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final ChallengeController challengerController;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.challengerController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.trophy),
              SizedBox(
                height: 40,
              ),
              Text(
                'Parabéns',
                style: AppTextStyles.heading40,
              ),
              SizedBox(
                height: 16,
              ),
              Text.rich(
                TextSpan(
                    text: 'Você concluiu\n',
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(text: '$title\n', style: AppTextStyles.bodyBold),
                      TextSpan(
                          text:
                              'acertando ${challengerController.correctAnswers} de $length questões')
                    ]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: NextButtonWidget.purple(
                    label: 'Compartilhar', onTap: () {}),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text(
                  'Voltar ao início',
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
