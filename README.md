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

* Os controles que ficam suspensos na tela atrapalham a visão do
  jogo. Modifique o arquivo main.pl para adicionar uma nova ação,
  que ocorre quando o jogador aperta a tecla 'c'. Ao apertar a
  tecla 'c' os controles devem sumir da tela se estiverem aparecendo.
  Se estiverem ocultos, ao apertar 'c' eles aparecem. Veja como 
  será o resultado no vídeo a seguir.

[![Escondendo os controles](http://img.youtube.com/vi/OOhle5iMbWU/0.jpg)](https://www.youtube.com/watch?v=OOhle5iMbWU "Escondendo os controles")  