# Projeto Bomber Doge
## Semestre (suplementar) 2020.3

Nesse projeto desenvolveremos inicializaremos o desenvolvimento de um pequeno
jogo baseado em Prolog. Para tal, utilizaremos o 
[Tau Prolog](http://www.tau-prolog.org/), um interpretador
Prolog totalmente escrito em JavaScript e que portanto roda facilmente em
qualquer navegador.

Nosso jogo será então baseado em Prolog + HTML + CSS, no entanto as partes
em HTML e CSS já serão fornecidas, e você só precisará trabalhar no
código Prolog. 

Teremos algumas fases de desenvolvimento, com atividades a serem desenvolvidas
em cada uma delas.

O projeto pode ser desenvolvido em grupos de até 4 pessoas.

# Rodando o jogo

Você precisará de:
* [Git](https://github.com/srmq/projeto-bomber-doge)
* Python 3.x (usaremos apenas como servidor web local, você não precisará
programar em python.)
* Um editor de texto de sua preferência

Etapas:
* Clone este repositório: `git clone https://github.com/srmq/projeto-bomber-doge.git`
* Entre no diretório com o código: `cd projeto-bomber-doge`
* Execute o servidor http do python: `python -m http.server` 
(por padrão, o servidor rodará na porta 8000, se precisar de outro número de
porta, passe como parâmetro o número após o http.server)
* Abra seu navegador no site http://localhost:8000/doge.html 

Pronto, o jogo já está rodando, divirta-se!

# Fase 0 do projeto

Esta fase, ao contrário das demais, deve ser feita de forma individual.
O objetivo dela é você se familiarizar mais com prolog (e com sua
encarnação Tau-Prolog), bem como com o código básico do jogo.

Você deverá analisar o código prolog do esqueleto do jogo fornecido,
no arquivo `main.pl`, recorrendo à documentação do Tau-Prolog, sempre
que necessário. Então responda ao questionário no classroom. Esta fase
vale 1 ponto na nota do projeto. Você pode já discutir as questões
com o seu grupo, mas as respostas são individuais, responda com
suas palavras.

A seguir, novas fases serão divulgadas. As novas fases serão em grupo.

# Projeto em grupo

Agora que vocês já estão familiarizados com a estrutura básica do código,
vocês estão aptos a aprimorá-lo, a fim de torná-lo um jogo mais
divertido! Tudo isso praticando Prolog!

Serão propostas algumas missões para vocês realizarem, as missões
básicas contam na pontuação do projeto. Já as missões finais
especiais são opcionais, e você pode conseguir até 1 ponto extra
(na nota final da disciplina) se realizá-las com sucesso!

# Missões Básicas

Observação: você sempre pode introduzir predicados auxiliares
que serão chamados pelos predicados solicitados, quando
achar necessário.

* Os controles que ficam suspensos na tela atrapalham a visão do
  jogo. Modifique o arquivo main.pl para adicionar uma nova ação,
  que ocorre quando o jogador aperta a tecla 'c'. Ao apertar a
  tecla 'c' os controles devem sumir da tela se estiverem aparecendo.
  Se estiverem ocultos, ao apertar 'c' eles aparecem. Veja como 
  será o resultado no vídeo a seguir (clique na imagem para ver o vídeo).

[![Escondendo os controles](http://img.youtube.com/vi/OOhle5iMbWU/0.jpg)](https://www.youtube.com/watch?v=OOhle5iMbWU "Escondendo os controles")  

* Veja que o predicado rnd_place_bone em main.pl, apesar do nome,
  sempre coloca o osso na posição fixa (200, 760). Você deve manter
  a posição horizontal fixa em 760, mas para a posição vertical faça
  com que o predicado coloque o osso numa posição aleatória entre
  20 e 380. Para tal, use algum predicado do módulo random do
  Tau-Prolog (consulte a documentação). Se você remover
  a linha 'set_seed(1)' do predicado init/0, cada vez que você
  carregar o jogo o osso deve aparecer numa posição diferente.
  Veja como será o resultado no vídeo a seguir (aperta-se F5 cada vez
  para o navegador recarregar o jogo)

  [![Osso com posição aleatória](http://img.youtube.com/vi/bcVmppalHoE/0.jpg)](https://www.youtube.com/watch?v=bcVmppalHoE "Osso com posição aleatória")  

  * Note que o cachorro consegue andar por cima das paredes. Isso 
    não deve ocorrer. Para tal, foi introduzido o predicado
    doge_free/2 que recebe o ponto para o qual o cachorro
    quer andar e deve ter sucesso apenas se esse ponto para onde ele
    quer ir não topar em qualquer parede. O predicado move/3 já usa esse predicado.
    No entanto, como você pode ver no main.pl o doge_free/2
    não foi implementado e sempre tem sucesso. Implemente o doge_free/2,
    será mais fácil utilizando predicados auxiliares. Uma dica é você
    verificar se o quadrado do cachorro no ponto para onde ele vai
    intersecta com algum quadrado de parede. Recomendo [este link](https://www.hackerearth.com/practice/notes/how-to-check-if-two-rectangles-intersect-or-not/)
    para lembrar as regras para verificar se dois retângulos
    se intersectam. (Lembre-se de que você deve implementar tudo em prolog, no arquivo main.pl). 
    Veja como será o resultado esperado no vídeo a seguir (note que o cachorro tenta passar por cima
    da parede, mas não consegue)

  [![Detecção de colisão](http://img.youtube.com/vi/zmk5BxhiH_s/0.jpg)](https://www.youtube.com/watch?v=zmk5BxhiH_s "Detecção de colisão")