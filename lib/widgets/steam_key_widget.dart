import 'package:flutter/material.dart';
import 'package:torrent_igruha/resources/image.dart';
import 'package:torrent_igruha/widgets/game_list/comment_widget.dart';
import 'package:torrent_igruha/widgets/game_list/loh_widget.dart';
import 'package:torrent_igruha/widgets/sidebar_widget.dart';
import 'game_details/vote_window/main_decoration_line_widget.dart';
import 'main_screen_widget.dart';

class SteamKeyWidget extends StatelessWidget {
  const SteamKeyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Align(
          alignment: Alignment.center,
          child: Icon(Icons.sunny, color: Colors.orangeAccent, size: 32),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Войти',
                style: TextStyle(
                  color: Colors.white,
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
              color: Colors.white,
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
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Игруха',
                              style: TextStyle(
                                fontSize: 32,
                                color: Color(0xFF8BC34A),
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
                          backgroundColor: const Color(0xFF8BC34A),
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
                  color: const Color(0xFF8BC34A),
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
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '🔥 Рандом ключ 🔑 Случайный ключ STEAM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF08A9D3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Комментариев: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      '243',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Text(
                        '/',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Text(
                        'Просмотров:',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: const Text(
                        '1499495',
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Container(
                  height: 35,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7C200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.thumb_down_alt_outlined, size: 22),
                      Text(
                        '+292',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(1.1, 1.1),
                              color: Colors.black45,
                              blurRadius: 2,
                            ),
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.thumb_up_alt_outlined, size: 22),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 400,
                  height: 380,
                  child: ClipRect(
                    child: Image.asset(GameImages.sbw, fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'Испытайте удачу! 😊 Доставка ключа Steam моментально после оплаты! '),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'Цена на игру которая Вам выпадет, составляет в магазине Steam ГАРАНТИРОВАННО от 28 руб. до 6999 руб!'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('✅ Вероятность выпада топ Игры 5%: ✅'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'Assаssins Creed Shadows, DOOM: The Dark Ages, Cаll of Duty: Black Ops 6, Sid Meiers Civilization VII, Sniper Elite: Resistance, Kingdom Come: Deliverance 2, Atomfall, The First Berserker: Khazan, Monster Hunter Wilds, Black Myth: Wukong, The Last of Us Part II Remastered, Spider-Man 2, FС 25, Dragons Dogma 2, HELLDIVERS 2, Mortal Kombat 1, Red Dead Redеmption 2, Atomic Heart Premium Edition,  Sniper Elite 5, FС 24, GTA V, Call of Duty Modern Warfare 2, Rust, Asassins Creed Mirage, Dayz, Hogwarts Legacy, Elden Ring, Forza Horizon 5, Football Manager, Spider-Man, Cyberpunk 2077, God of War, Total War: WARHAMMER III, Ghost of Tsushima, Call of Duty Modern Warfare 3, Bodycam и прочие игры на платформе Steam.'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('🔴 ВАЖНО 🔴'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text.rich(
                  TextSpan(
                    text:
                        '◾️ Ключи идут вперемешку. Какая игра именно выпадет Вам - решает система;\n',
                    children: [
                      TextSpan(
                        text:
                            '◾️ Все ключи ОФИЦИАЛЬНО закупаются на распродажах, имеют пожизненную гарантию!;\n',
                      ),
                      TextSpan(
                        text:
                            '◾️ Ключи не имеют региональных ограничений / Region Free.',
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LohWidget()));
                  },
                  child: Text(
                    '[ Купить Рандом ключ за 249 руб ]',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFD69600),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Отзывы:', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 16),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'Narsulti21',
                  comment: 'выпала игра за 460 рублей, вообще четко',
                  date: '12.06.2024, 23:24',
                  like: '136'),
              SizedBox(height: 16),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'Danil.talinjik',
                  comment:
                      'Рискнул, ключ активировался уже хорошо ^_^.... правда сама игра средняя но все равно круто, кому не жалко 150 рб можете испытать удачу)',
                  date: '13.06.2024, 01:42',
                  like: '92'),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'devil331q88',
                  comment:
                      'Первый раз попалась какая-то инди игра за 20р, а второй GTA V, пойдет)',
                  date: '13.06.2024, 14:20',
                  like: '79'),
              SizedBox(height: 16),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'Silvestr bez talona',
                  comment: 'Выпала какая-то ноунейм инди-фигня за 385 рублей',
                  date: '13.06.2024, 14:32',
                  like: '68'),
              SizedBox(height: 16),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'emigo',
                  comment: 'Че то подозрительно не кажется?',
                  date: '13.06.2024, 16:37',
                  like: '96'),
              SizedBox(height: 16),
              MainDecorationLineWidget(),
              CommentWidget(
                  name: 'Xeuf92',
                  comment:
                      'Dr. Daisy Pet Vet 15минут игры вылетела, больше никогда не запущу. Думал хоть со второй повезёт, в итоге я гордый обладатель Mimic Arena.',
                  date: '13.06.2024, 17:06',
                  like: '43'),
              MainDecorationLineWidget(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0xFF8BC24A),
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
              SizedBox(height: 16),
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
