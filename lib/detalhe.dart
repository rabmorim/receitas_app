import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detalhe extends StatelessWidget{
  const Detalhe({super.key});
  
  //Variaveis de uma simulação de vinda de dados do banco de dados
  final foto = "img/bolo_milho.jpg";
  final nomeReceita = "BOLO DE MILHO CREMOSO";
  final tempoPreparo = "40 Minutos";
  final favoritos = "1.123";
  final numeroComentarios = "300";
  final rendimento = "12 Porções";
  
  @override
  Widget build(BuildContext context) {
   return Container(
    color: Colors.amber.shade200,
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25) ,
    child:  Column(
      children: [
        //Imagem do produto
        Image.asset(foto),
        const Padding(padding: EdgeInsets.only(bottom: 15)),
        

        //Titulo da receita
           Text( nomeReceita,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: BorderSide.strokeAlignOutside,
            color: Colors.white
            ),
          ),

        //Espaçamento
        //Uma caixa com altura e largura, uma forma de utilizar espaçamento
         SizedBox(
          height: 2,
          width: 400,
          child: Container(
            color: Colors.white,
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 20)),

        //Ícones
         Row(
          //Divide os elementos ( as colunas igualmente)
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Preparo
              Column(
                children: [
                  // Ícone de Relogio
                  const FaIcon(
                    FontAwesomeIcons.solidClock,
                    color: Colors.white,
                    size: 28,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  
                  const Text(
                    'PREPARO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  
                  const Padding(padding: EdgeInsets.only(bottom: 10)),

                  Text(
                    tempoPreparo,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              ),

            //Rendimento
               Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.cheese,
                    color: Colors.white,
                    size: 28,
                  ),

                  const Padding(padding: EdgeInsets.only(top: 10)),

                  const Text(
                    'RENDIMENTO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  
                  const Padding(padding: EdgeInsets.only(bottom: 10)),

                  Text(
                    rendimento,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    )

                ],
              ),
            //Favoritos

               Column(
                 children: [
                  const FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                    size: 28,
                  ),

                  const Padding(padding: EdgeInsets.only(top: 10)),

                  const Text(
                    'FAVORITOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  
                  const Padding(padding: EdgeInsets.only(bottom: 10)),

                  Text(
                    favoritos,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    )
                 ],
              ),
            //Comentarios
               Column(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidComment,
                    color: Colors.white,
                    size: 28,
                  ),

                  const Padding(padding: EdgeInsets.only(top: 10)),

                  const Text(
                    'COMENTÁRIOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  
                  const Padding(padding: EdgeInsets.only(bottom: 10)),

                  Text(
                    numeroComentarios,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    )
                ],
              )
          ],
        ),

        const Padding(padding: EdgeInsets.only(top: 20)),

         Column(
          children: [
            //Icone e ingrediente
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
            const Text(
              'INGREDIENTES',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),

            //Lista de Ingredientes
            Container(
              padding: const EdgeInsets.all(20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  " 4 ovos\n 1 lata de milho verde\n 1/2 lata (de milho) de óleo de soja\n 3 colheres de sopa de coco ralado\n 2 colheres de sopa de queijo ralado (opcional)\n 2 xícaras de açúcar\n 7 colheres de sopa de milharina\n 1 colher de fermento em pó",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),

            ),

          

          //Icone e modo de preparo
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),

              const Text(
              "MODO DE PREPARO",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),


          //Modo de preparo
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "1. Bata no liquidificador os ovos, o leite e o óleo por 1 minuto.\n2. Acrescente o milho e bata por mais uns 2 minutos.\n3. Adicione toda parte seca e bata até agregar os ingredientes.\n4. Unte uma forma de buraco no meio e leve ao forno preaquecido a 180ºC por 45 minutos.",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
            ),


          ],
        ),
      ],
    ),
   );

  }

}