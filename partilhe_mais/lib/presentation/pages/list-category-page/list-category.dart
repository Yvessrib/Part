// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  final String tituloCategoria = "Saúde";
  final String iconeCategoria = "assets/img/coracao.png"; // Insira caminho da imagem do Icone
  final List<Item> items = [
    Item("Instituição 1", "Ajude a instituição com algumas coisa que ele ta fazendo e estará brevemente descrito aqui"),
    Item("Instituição 2", "Ajude a instituição com algumas coisa que ele ta fazendo e estará brevemente descrito aqui"),
    Item("Instituição 3", "Ajude a instituição com algumas coisa que ele ta fazendo e estará brevemente descrito aqui"),
    // Adicione mais itens de lista conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      appBar: AppBar(
        title: Text('Seu App'),
        centerTitle: true,
        backgroundColor: Color(0xFF1C1C1C),
      ),
      body: Center(
        child: Container(
          width: 330,
          height: 680,
          decoration: BoxDecoration(
            color: Color(0xFFF0EC57),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                tituloCategoria,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.normal,
                  height: 0.66667,
                ),
              ),
              SizedBox(height: 40), // Espaçamento após o título
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return _buildListItem(items[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //Colocar imagem de iconeCategoria poraqui
  Widget _buildListItem(Item item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.titulo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Raleway',
              fontStyle: FontStyle.normal,
              height: 1, // 100%
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            item.descricao,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Raleway',
              fontStyle: FontStyle.normal,
              height: 1.25, // 125%
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class Item {
  final String titulo;
  final String descricao;

  Item(this.titulo, this.descricao);
}