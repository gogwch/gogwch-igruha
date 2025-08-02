import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/steam_key_widget.dart';
import '../resources/image.dart';
import 'game_list/container_button_widget.dart';
import 'main_screen_widget.dart';

const textsArray = [
  'Новые игры',
  'По сети',
  'VIP 👑',
  'Топ 10 Онлайн игр',
  'Топ 100 игр',
  'С русской озвуской',
  '',
  '',
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
          child: Scrollbar(
            thumbVisibility: true,
            child: ScrollConfiguration(
              behavior: SmoothScrollBehavior(),
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerButtonWidget(
                        text: 'Новые игры', colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(text: '2025', colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'По сети', colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'VIP 👑', colorName: 0xFF8BC34A),
                    SizedBox(height: 30),
                    ContainerButtonWidget(
                        text: 'Топ 10 Онлайн игр',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Топ 100 игр', colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'С русской озвуской',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'С русской озвуской',
                        value: 6,
                        colorName: 0xFF0EACDC),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        'Советуем 🔥',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
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
                    SizedBox(height: 20),
                    ContainerButtonWidget(
                        text: 'Новые игры 🔥 | Все игры',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Скоро на сайте ⏳',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Русская озвучка (Rus)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Ждем выхода (Waiting)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Категории',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20),
                    ContainerButtonWidget(
                        text: 'Игры с онлайном',
                        value: 6,
                        colorName: 0xFF0EACDC),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры по сети', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Рупаки от Игрухи',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Репаки от Хатаба',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Репаки от Механиков',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2025 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2024 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2023 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2022 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2021 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2020 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2019 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры 2018 года',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Для слабых ПК', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Хороший сюжет', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Хорошая графика',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Открытый мир', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'От 1-го лица', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'От 3-го лица', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Шутеры от 1-го лица',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Шутеры от 3-го лица',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Гонки (Race)', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Зомби (Zombie)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Экшн (Action)', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Стелс (Stealth)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Роллевые (RPG)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Хоррор (Horror)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Драки (Fighting)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Аркады (Arcade)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Спортивные (Sport)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Стратегии (Strategy)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Выживание (Survival)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Симуляторы (Simulators)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Приключения (Adventure)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Песочницы (Sandbox)',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Эротические игры',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Визуальные новеллы',
                        value: 6,
                        colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'VR-игры', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Игры на двоих', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'GOG-игры', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 6),
                    ContainerButtonWidget(
                        text: 'Без установки', value: 6, colorName: 0xFF8BC34A),
                    SizedBox(height: 3),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
