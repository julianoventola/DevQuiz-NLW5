import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/cupertino.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget(context)
      : super(
          preferredSize: Size.fromHeight(MediaQuery.of(context).padding.top +
              MediaQuery.of(context).size.height * 0.08 +
              MediaQuery.of(context).size.height * 0.21),
          child: Container(
            height: MediaQuery.of(context).padding.top +
                MediaQuery.of(context).size.height * 0.08 +
                MediaQuery.of(context).size.height * 0.21,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).padding.top +
                      MediaQuery.of(context).size.height * 0.18,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Olá ',
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                text: 'Juliano',
                                style: AppTextStyles.titleBold,
                              ),
                            ]),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.08,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/28475558?v=4',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}
