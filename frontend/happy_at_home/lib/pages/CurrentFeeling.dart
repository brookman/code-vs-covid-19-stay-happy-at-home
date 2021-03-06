import 'package:flutter/material.dart';
import 'package:happyathome/apis/Backend.dart';
import 'package:happyathome/models/Emoji.dart';
import 'package:happyathome/models/Feeling.dart';
import 'package:happyathome/usecases/UserRegistration.dart';
import 'package:happyathome/widgets/ButtonWidget.dart';
import 'package:happyathome/widgets/CustomColors.dart';
import 'package:happyathome/widgets/EmojiChooserWidget.dart';
import 'package:happyathome/widgets/LoadingOverlayWidget.dart';
import 'package:happyathome/widgets/StyledSlider.dart';
import 'package:happyathome/widgets/TitleCard.dart';
import 'package:happyathome/widgets/UserWidget.dart';

import '../UserState.dart';

class CurrentFeeling extends StatefulWidget {
  @override
  _CurrentFeelingState createState() => _CurrentFeelingState();
}

class _CurrentFeelingState extends State<CurrentFeeling> {
  final userstate = UserState();
  List<Emoji> chosenFeelings;
  double timePeriod = 15.0;
  bool loading = false;

  void updateFeelings(feelingList) {
    chosenFeelings = feelingList;
    if (chosenFeelings.length == 3) {
      uploadFeelingsAndTime();
    }
  }

  void updateTimePeriod(time) {
    this.timePeriod = time;
  }

  void uploadFeelingsAndTime() async {
    setState(() {
      loading = true;
    });
    var feelings = chosenFeelings.map((emoji) => Feeling(emoji)).toList();
    await Backend.setFeelings(UserState().user, feelings);
    await Backend.setTime(UserState().user, timePeriod.round());
    UserState().user = await UserRegistration.load();
    Navigator.pushReplacementNamed(context, "/feed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.BackgroundColor,
        body: SafeArea(
          child: LoadingOverlayWidget(
            isLoading: loading,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    UserWidget(UserRegistration.load()),
                    TitleCard(
                      title: "How much time do you want to invest?",
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: StyledSlider(timePeriod, updateTimePeriod),
                      ),
                    ),
                    TitleCard(
                        title: "How do you feel?",
                        child: EmojiChooserWidget(3, updateFeelings, true)),
                    ButtonWidget(
                      title: "Make me Happy!",
                      onPress: uploadFeelingsAndTime,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
