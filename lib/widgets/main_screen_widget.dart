import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/mode_colors_widget.dart';
import 'package:torrent_igruha/widgets/sidebar_widget.dart';
import 'package:torrent_igruha/widgets/theme_provider_widget.dart';
import '../resources/image.dart';
import 'game_list/game_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class SmoothScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return ClampingScrollPhysics();
  }

  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _query = _searchController.text.toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final newGames = [
      Game(image: GameImages.g1, name: 'Crossout'),
      Game(image: GameImages.g2, name: 'Brigand: Oaxaca'),
      Game(image: GameImages.g3, name: 'Astrea '),
      Game(image: GameImages.g4, name: 'ГТА Малиновка'),
      Game(image: GameImages.g5, name: 'World of Tanks'),
      Game(image: GameImages.g6, name: 'World of Worships'),
      Game(image: GameImages.g7, name: 'All in Abyss'),
      Game(image: GameImages.g8, name: 'Ballionaire'),
      Game(image: GameImages.g9, name: 'Detechtive 2112'),
      Game(image: GameImages.g10, name: 'Foundation'),
      Game(image: GameImages.g11, name: 'Guidus zero'),
      Game(image: GameImages.g12, name: 'Big Rigs'),
      Game(image: GameImages.g13, name: 'Armored Brigade'),
      Game(image: GameImages.g14, name: 'Detective: The Test'),
      Game(image: GameImages.g15, name: 'Burden of Command'),
      Game(image: GameImages.g16, name: 'Commandos: origins'),
    ];

    final popularGames = [
      Game(image: GameImages.v1, name: 'ГТА 5 (GTA 5)'),
      Game(image: GameImages.v2, name: 'ГТА Сан Андреас'),
      Game(image: GameImages.v3, name: 'Симс 4'),
      Game(image: GameImages.v4, name: 'ГТА 4 (GTA 4)'),
      Game(image: GameImages.v5, name: 'RDR 2'),
      Game(image: GameImages.v6, name: 'Metro Exodus'),
      Game(image: GameImages.v7, name: 'NFC MW'),
      Game(image: GameImages.v8, name: 'ETS 2'),
      Game(image: GameImages.v9, name: 'Skyrim'),
      Game(image: GameImages.v10, name: 'STALKER: SoC'),
      Game(image: GameImages.v11, name: 'Cyberpunk 2077'),
      Game(image: GameImages.v12, name: 'Мафия 2'),
      Game(image: GameImages.v13, name: 'Майнкрафт'),
      Game(image: GameImages.v14, name: 'STALKER 2'),
      Game(image: GameImages.v15, name: 'STALKER: CoP'),
      Game(image: GameImages.v16, name: 'BeamNG DRIVE'),
    ];

    final filteredNewGames = newGames
        .where((game) => game.name.toLowerCase().contains(_query))
        .toList();

    final filteredPopularGames = popularGames
        .where((game) => game.name.toLowerCase().contains(_query))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        scrolledUnderElevation: 0.0,
        leading: Align(
          alignment: Alignment.center,
          child: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: Colors.orangeAccent)),
            child: IconButton(
              onPressed: () {
                final provider = ThemeProviderWidget.of(context);
                provider.onThemeChanged(
                  provider.mode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark,
                );
              },
              icon: Icon(Icons.sunny, size: 32),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Войти',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.perm_contact_cal_rounded,
              size: 36,
            ),
          ),
        ],
      ),
      body: ScrollConfiguration(
        behavior: SmoothScrollBehavior(),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size(2, 2),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainScreenWidget(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Торрент',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 32,
                                    color: ModeColors.title2(context),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Игруха',
                              style: TextStyle(
                                fontSize: 32,
                                color: ModeColors.title(context),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Неоф. статичное кидалово | Перди сколько влезет ;)',
                          style: TextStyle(fontSize: 11),
                          softWrap: true,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          showGeneralDialog(
                            context: context,
                            barrierDismissible: true,
                            barrierLabel: '',
                            barrierColor: Colors.black54,
                            transitionDuration:
                                const Duration(milliseconds: 300),
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return Align(
                                alignment: Alignment.centerLeft,
                                child: Material(
                                  color: Colors.white,
                                  child: SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(-1, 0),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: SizedBox(
                                      width: 300,
                                      height: double.infinity,
                                      child: SidebarWidget(),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              ModeColors.containerOrButton(context),
                          shadowColor: Colors.green,
                          padding: const EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Icon(
                          Icons.menu,
                          size: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Container(
                height: 60,
                width: double.infinity,
                color: ModeColors.containerOrButton(context),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 23.0, color: Colors.black),
                      const Spacer(),
                      const SizedBox(width: 50),
                      SizedBox(
                        width: 210,
                        height: 250,
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Поиск...',
                            suffixIcon: const Icon(Icons.search_outlined,
                                color: Colors.white, size: 28),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 6.0, horizontal: 12.0),
                            hintTextDirection: TextDirection.ltr,
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.5),
                                  width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.5),
                                  width: 2.0),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            decorationColor: Colors.white,
                          ),
                          cursorColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 5,
                          color: ModeColors.markupOfTitle(context),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Новое на сайте',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child:
                          Text('Комментарии', style: TextStyle(fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                  color: Colors.black, width: 2),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              )),
                          onPressed: () {},
                          child: const Icon(Icons.keyboard_arrow_right_sharp,
                              size: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              GameListWidget(gamesList: filteredNewGames),
              const Padding(padding: EdgeInsets.all(10.0)),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 5,
                          color: ModeColors.markupOfTitle(context),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Самые популярные',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              GameListWidget(gamesList: filteredPopularGames),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: ModeColors.containerOrButton(context),
                        width: 2.2),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Text(
                      'Сегодня прямо здесь, на Торрент Игруха можно скачать игры через торрент на компьютер или на ноутбук, а каких-нибудь 5–7 лет назад нужно было идти до дискового магазина и оставлять немалые суммы. К тому же случалось, что, увидев цену, приходилось возвращаться домой с пустыми руками. Тогда было два выхода: копить или искать заветный диск у знакомых. Нередко он находился у таких знакомых, которые живут еще дальше, чем находится магазин, и дают физический носитель с дрожащими руками: «А вдруг испортишь?». Может, что-то ностальгическое и есть в тех временах, и Торрент-Игруха.Орг отнюдь не против приятных воспоминаний — наслаждайтесь ими, пока качается игра. Только сильно поностальгировать не получится — с нашего сервиса игры скачиваются очень быстро. А еще мы делаем свои репаки под названием RePack от Igruha.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'О сайте',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 20),
                ),
              ),
              SizedBox(height: 32),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 65,
                    color: Color(0xFF2C2C2C),
                  ),
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Color(0xFF1A1A1A),
                  ),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Color(0xFF1E1E1E),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  'Copyright © 2014-2025 Официальный сайт Торрент-',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Игруха',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
