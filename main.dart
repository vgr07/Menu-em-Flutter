import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(197, 95, 10, 2),
            title: const Text("Hamburger Artesanal"),
          ),
          backgroundColor: const Color.fromARGB(128, 221, 66, 66),
          body: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    height: 400,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("X-Bacon"),
                        Icon(Icons.menu_book_outlined),
                        Text(
                          'Ingredientes\n'
                          '- Pão\n'
                          '- Hamburger (sopa) de açúcar\n'
                          '- queijo e presunto;\n'
                          '- bacon;\n'
                          '- alface\n'
                          '- molhos do seu gosto',
                          softWrap: true,
                        ),
                        Text(
                            " Um Hamburger é mais que um lanche, é um sentimento!"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star_half),
                            Text("25546 vizualizações "),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.timer_sharp),
                                Row(
                                  children: [Text("Tempo de Preparo")],
                                ),
                                Row(
                                  children: [Text("20 Minutos")],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.loyalty),
                                Row(
                                  children: [Text("Quantidade")],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.bookmark_add_outlined),
                                Row(
                                  children: [Text("Favoritado")],
                                ),
                                Row(
                                  children: [Text("23")],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Image(
                  image: const AssetImage('images/fast_food.jpg'),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height,
                ),
              ],
            ),
          ),
        ));
  }
}
