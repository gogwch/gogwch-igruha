import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/steam_key_widget.dart';
import '../resources/image.dart';
import 'game_list/container_button_widget.dart';
import 'main_screen_widget.dart';

var buttonValues = [
  Button(text: 'Новые игры'),
  Button(text: 'adfghdf игры'),
  Button(text: 'asdas игры'),
  Button(text: 'tyuty игры'),
  Button(text: 'tyuty игры'),
  Button(text: 'tyuty игры', roundedCornersValue: 10),
  Button(text: 'tyuty игры', roundedCornersValue: 10),

];

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 56,
            color: Colors.black87,
            padding: const EdgeInsets.symmetric(horizontal: 8)),
        Expanded(
          child: ListView.builder(
              itemCount: buttonValues.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: 38,
                    child: ContainerButtonWidget(
                      text: buttonValues[index].text,
                      roundedCornersValue:
                          buttonValues[index].roundedCornersValue,
                      color: buttonValues[index].color,
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          child: Scrollbar(
            thumbVisibility: true,
            child: ScrollConfiguration(
              behavior: SmoothScrollBehavior(),
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
                child: Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3.5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => SteamKeyWidget(),
                              ),
                            );
                          },
                          child: Image.asset(
                            GameImages.sbw,
                            width: 230,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Container(
                height: 56,
                color: Colors.black87,
                padding: const EdgeInsets.symmetric(horizontal: 8)),
            Expanded(
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: buttonValues.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        height: 38,
                        child: ContainerButtonWidget(
                          text: buttonValues[index].text,
                          roundedCornersValue:
                              buttonValues[index].roundedCornersValue,
                          color: buttonValues[index].color,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
