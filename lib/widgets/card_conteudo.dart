import 'package:flutter/material.dart';
import 'package:teste/domain/conteudo.dart';
import 'package:teste/pages/disciplina_page.dart';

class CardConteudo extends StatefulWidget {
  final Conteudo conteudo;
  const CardConteudo({
    Key? key,
    required this.conteudo,
  }) : super(key: key);

  @override
  State<CardConteudo> createState() => _CardConteudoState();
}

class _CardConteudoState extends State<CardConteudo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color:  Color(0xFF9ED3EF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.conteudo.titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'Abel-Regular'
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.conteudo.resumo,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Abel-Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.network(widget.conteudo.imagem),
                      ),
                      const SizedBox(height: 8.0,),
                      ElevatedButton(
                        onPressed: onPressedButton,
                        child: const Text(
                          'Ver mais',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'AmaticSC-Regular'
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
  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Disciplina();
        },
      ),
    );

  }
}