import 'package:flutter/material.dart';
import 'package:padaria_tia_rosa/src/features/carrinho/view/carrinho_page.dart';
import 'package:padaria_tia_rosa/src/features/favoritos/view/favoritos_page.dart';
import 'package:padaria_tia_rosa/src/features/ofertas/view/ofertas_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView(
          controller: pageController,
          children: const [
            OfertasPage(),
            FavoritosPage(),
            CarrinhoPage(),
          ],
        ),
        bottomNavigationBar: AnimatedBuilder(
          animation: pageController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageController.page?.round() ?? 0,
              onTap: (index){
                pageController.jumpToPage(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag,), label: "Ofertas",),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star,), label: "Favoritos",),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart,), label: "Carrinho",),
              ],
            );
          },
        )


    );
  }
}