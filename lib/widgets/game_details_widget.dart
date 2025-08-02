import 'package:flutter/material.dart';
import 'package:torrent_igruha/resources/image.dart';
import 'package:torrent_igruha/widgets/game_details/game_details_text_widget.dart';
import 'package:torrent_igruha/widgets/game_details/row_system_requirements_widget.dart';
import 'package:torrent_igruha/widgets/game_details/screenshot_image_widget.dart';
import 'package:torrent_igruha/widgets/game_details/vote_window/main_decoration_line_widget.dart';
import 'package:torrent_igruha/widgets/game_details/vote_window/vote_dialog.dart';
import 'package:torrent_igruha/widgets/game_details/youtube_video_player_widget.dart';
import 'package:torrent_igruha/widgets/game_list/comment_widget.dart';
import 'package:torrent_igruha/widgets/game_list/game_list_widget.dart';
import 'package:torrent_igruha/widgets/main_screen_widget.dart';
import 'package:torrent_igruha/widgets/sidebar_widget.dart';
import 'package:torrent_igruha/widgets/theme_provider_widget.dart';

import 'mode_colors_widget.dart';

class GameDetailsWidget extends StatelessWidget {
  GameDetailsWidget({super.key});

  final newGames = [
    Game(image: GameImages.g1, name: 'Crossout'),
    Game(image: GameImages.g2, name: 'Brigand: Oaxaca'),
    Game(image: GameImages.g3, name: 'Astrea '),
    Game(image: GameImages.g4, name: 'ГТА Малиновка'),
    Game(image: GameImages.g5, name: 'World of Tanks'),
    Game(image: GameImages.g6, name: 'World of Worships'),
    Game(image: GameImages.g7, name: 'All in Abyss'),
    Game(image: GameImages.g8, name: 'Ballionaire'),
  ];

  @override
  Widget build(BuildContext context) {
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
                          style: TextStyle(fontSize: 11, color: Color(0xFFBEBEC0)),
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
                          backgroundColor: ModeColors.containerOrButton(context),
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 62,
                  width: double.infinity,
                  color: ModeColors.containerOrButton(context),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 23.0,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        const SizedBox(width: 50),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 3),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Text(
                            'Фиг тебе, а не поиск',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 18),
                child: Text(
                  'Crossout',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: ModeColors.title2(context)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '🕓 Обновлено: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '31.07.2024, 14:44',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: ModeColors.number(context)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '/',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: ModeColors.number(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Text(
                        '👁️',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child:  Text(
                        '8935245',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:  ModeColors.number(context)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7C200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child:
                                Icon(Icons.thumb_down_alt_outlined, size: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0),
                            child: TextButton(
                              child: Text(
                                '+3814',
                                style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1.1, 1.1),
                                      color: Colors.black45,
                                      blurRadius: 2,
                                    ),
                                  ],
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => VoteDialog(),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Icon(Icons.thumb_up_alt_outlined, size: 22),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 195,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 0.1,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(GameImages.g1),
                              ),
                            ),
                          ),
                          SizedBox(height: 3),
                          Column(
                            children: [
                              RowSystemRequirementsWidget(
                                  text:
                                      'Видеокарта: GeForce GT 440 or AMD Radeon HD 5670'),
                              RowSystemRequirementsWidget(
                                  text: 'Оперативная память: 4 GB ОЗУ'),
                              RowSystemRequirementsWidget(
                                  text: 'Место на диске: 7 GB'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Дата обновления: 2024'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Жанр: Action, MMORPG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Разработчик: Targem games'),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Издательство: Gaijin Ent.')),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Платформа: PC'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Тип издания: Лицензия'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text.rich(
                            TextSpan(
                              text: 'Язык интерфейса:',
                              style: TextStyle(),
                              children: [
                                TextSpan(
                                  text: ' Русский',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text.rich(
                            TextSpan(
                              text: 'Язык озвучки:',
                              style: TextStyle(),
                              children: [
                                TextSpan(
                                  text: ' Русский',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text.rich(
                            TextSpan(
                              text: 'Таблетка:',
                              style: TextStyle(),
                              children: [
                                TextSpan(
                                  text: ' Не требуется',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Системные требования:',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Операционная система: Windows 7 /  8 / 10',
                                    softWrap: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: SizedBox(
                                  width: 140,
                                  child: Text(
                                    'Процессор: Intel Core 2 Duo E8500 or AMD Phenom II X3 720',
                                    softWrap: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Описание игры',
                  style: TextStyle(
                      color: ModeColors.markupOfTitle(context),
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GameDetailsTextWidget(
                  text:
                      'Подготовлено для itorrents-igruha.org: Создатели знаменитой военной игры «War Thunder», Targem Games и Gaijin Entertainment вновь объединились и разработали новый проект – Кроссаут , представляющий собой бесплатное ММО. При этом камера двигается в режиме «3D» , т.е. от третьего лица. Действия происходят в постапокалиптическом мире. Из деталей, которые в реальности странно смотрятся вместе, надо будет сконструировать самую настоящую боевую машину. Но это еще не все – эту «тачку» нужно оснастить броней, оружием, различными системами, двигателями. Эти элементы сделают бронемобиль поистине уникальным творением, ведь можно даже поставить генератор, который сделает аппарат невидимым. Нафантазировать можно что угодно – лишь бы были подходящие детали. Так что если вы фанат игры War Thunder, то скачать Crossout через торрент у нас Вам нужно по-любому.'),
              SizedBox(height: 16),
              GameDetailsTextWidget(
                  text:
                      'А где же их взять? Все достаточно просто – из одних элементов собрать другие, добыть нужные на поле боя или купить, благо есть аукцион. Комбинаций – море, и каждый игрок сможет найти такую, которая подойдет именно для него. Если верно распределять ресурсы, то можно создать совершенно невероятную конструкцию. При этом выбор достаточно широк – вездеход, платформа, антиграв и т.д. Понавесить шипы, решетки, поставить радар, мощный двигатель, вращающиеся режущие диски, пару пулеметов или дуло танка – и вперед, к победе. Ну а после добыть детали, пойти в мастерскую, собрать или разобрать, усовершенствовать свою машину.'),
              SizedBox(height: 16),
              GameDetailsTextWidget(
                  text:
                      'Разрушенные безлюдные заводы, руины некогда цветущих городов - вот новые территории битв. Тут-то и проверяются конструкции – насколько они быстры, прочны, боеспособны. Теперь можно отстрелить у врага пушку, раздробить гусеницу, уничтожить колесо. Конечно же, противники не будут сидеть, сложа руки, и в свою очередь, постараются раскурочить вашу машину.'),
              SizedBox(height: 16),
              GameDetailsTextWidget(
                  text:
                      'Посмотрев на аппарат в деле, игрок решает, что усилить, какие детали изменить, переоборудовать. Изменять можно, как и сколько угодно. Также есть возможность собираться командами. Потребуется навыки тактика, конструктора, снайпера и даже экономиста. Нужно будет импровизировать на ходу, решая, какую деталь применить на машину, а какую лучше использовать для создания иных элементов.'),
              SizedBox(height: 16),
              GameDetailsTextWidget(
                  text:
                      'Если вы захотите скачать торрент Crossout сейчас, то у Вас ничего не получиться, так как бета-тестирование начнется летом. Будущие воины, конструкторы и стратеги смогут начать собирать разные боевые машины, если станут участниками бета-тестирования Crossout. Чтобы сделать это, нужно зайти на официальный сайт игры и подать там заявку.'),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                        'Разработчики всех секретов не открывают, но обещают, что в игре можно будет:',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                    '- Отстрелить у машины противника любой элемент, после чего ее боеспособность сразу уменьшится.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                    '- Поставить разное оружие – пилы, пулеметы, ракеты, дроны, дрели и т.д.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('- Создавать в мастерской детали.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('- Продавать вещи на аукционе.'),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                    'А также игроков ждет полная стратегическая свобода. Делай, что хочешь, лишь бы остаться живым и довести машину до базы врага.'),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Трейлер / Геймплей:',
                  style: TextStyle(
                      color: Color(0xFF8BC34A),
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 16),
              YouTubeVideoPlayer(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Скриншоты из игры:',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8BC34A),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ScreenshotImageWidget(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Размер : 2.99 GB | Актуальная версия',
                  style: TextStyle(
                      color: Color(0xFF8BC34A),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Установка',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text.rich(
                  TextSpan(
                    text: '1. Перейти на сайт и зарегаться\n',
                    style: TextStyle(fontSize: 15),
                    children: [
                      TextSpan(text: '2. Скачать игру\n'),
                      TextSpan(text: '3. Играть\n'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('Также рекомендуем похожие игры:',
                    style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 16),
              GameListWidget(gamesList: newGames),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Комментарии', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'polll',
                  comment:
                      'админ, спасибо, отличный сайт, давно такой искал, расскажу друзьям',
                  date: '31.05.2015, 04:02',
                  like: '147'),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'Alleroec',
                  comment:
                      'Хорошая игра, посмотрел фильм безумный макс после этого игра вообще шикарно зашла)',
                  date: '22.06.2015, 11:44',
                  like: '63'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'gaok2002',
                  comment: 'спасибо за игру, все играть однозначно:)',
                  date: '19.03.2016, 21:18',
                  like: '34'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'niki_net',
                  comment: 'кто уже скачал можете сказать она работает???',
                  date: '01.05.2016, 10:45',
                  like: '27'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'Nadil00',
                  comment: 'админ выложи её пожалуйста',
                  date: '07.05.2016, 18:06',
                  like: '22'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'Delgaro',
                  comment: 'Крутая игра!',
                  date: '10.06.2017, 15:53',
                  like: '12'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              CommentWidget(
                  name: 'Dimon77',
                  comment: 'А в неё одному можно играть или только по сети?',
                  date: '10.06.2017, 23:32',
                  like: '17'),
              SizedBox(height: 4),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      color: ModeColors.containerOrButton(context),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 8),
                            child: Icon(Icons.warning_amber_rounded,
                                size: 45, color: Colors.white),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 6, right: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Информация',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'Чтобы оставить комментарий, необходимо зарегистрироваться – '
                                    'оставлять комментарии могут только зарегистрированные, либо VIP-пользователи.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                    softWrap: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
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
