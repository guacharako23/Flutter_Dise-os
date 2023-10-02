import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Food {
  final String name;
  final String imagePath;

  const Food({required this.name, required this.imagePath});
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Food> foods = [
    const Food(name: 'Hamburguesa', imagePath: 'lib/img/burger.png'),
    const Food(name: 'Ensalada', imagePath: 'lib/img/ensalada.png'),
    const Food(name: 'Fast Food', imagePath: 'lib/img/fastfood.png'),
    const Food(name: 'Hot Dog', imagePath: 'lib/img/hotdog.png'),
    const Food(name: 'Jugo', imagePath: 'lib/img/jugo.png'),
    const Food(name: 'Papas', imagePath: 'lib/img/papas.png'),
    const Food(name: 'Pizzas', imagePath: 'lib/img/pizza.png'),
    const Food(name: 'Tortas', imagePath: 'lib/img/torta.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -MediaQuery.of(context).size.height * 0.2,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '¿Tienes Filo?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset('lib/assets/avatar.png'),
                  const SizedBox(height: 10),
                  Image.asset('lib/assets/fondo.png'),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: SizedBox(
                            width: 150.0,
                            child: Column(
                              children: [
                                Image.asset(foods[index].imagePath),
                                Text(foods[index].name),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
