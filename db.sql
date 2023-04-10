CREATE DATABASE IF NOT EXISTS desempregados;

USE desempregados;

CREATE TABLE categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE postagens (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  manchete VARCHAR(255) NOT NULL,
  conteudo TEXT NOT NULL,
  categoria_id INT NOT NULL,
  thumbnail_url VARCHAR(255),
  data_criacao DATETIME,
  data_modificacao DATETIME,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id)
    REFERENCES categorias(id)
);

INSERT INTO categorias SET
	id=1, nome="Música";

INSERT INTO postagens SET
	titulo="Neil Young e a imortalidade da arte em Rust Never Sleeps",
    manchete="Seria melhor entrar em combustão, e ir embora de maneira explosiva e remarcável, ou desaparecer aos poucos sem pretenção de ser lembrado após a morte?",
    categoria_id=1,
    thumbnail_url="https://4.bp.blogspot.com/-HCielHh8aeA/VMq27pmvj5I/AAAAAAAA7E4/vTc-cDKc4lY/s1600/neil-young-ii.jpg",
    conteudo="<p>Neil Young é um cantor modesto e de origens humildes, de certa forma. Sempre é tido como o padrinho do movimento grunge dos anos noventa, sendo uma das principais inspirações de gente como o Eddie Vedder e o Kurt Cobain. Bem, não é mistério que o lendário vocalista do Nirvana, hoje tido como um dos maiores ícones de toda a cultura popular, foi embora de maneira repentina, com um tiro no próprio crânio durante o ápice da sua carreira artística. Em sua nota de suicídio, Cobain escreveu uma das frases mais icônicas da cultura do rock, originalmente cunhada por Young:</p><p><em>'It's better to burn out than to fade away'</em></p>A música de onde surgiu esse trecho, 'My My, Hey Hey', elabora esse questionamento filosófico em metáforas simplesmente geniais que me deixaram boquiaberto quando eu de fato entendi o significado delas. Saca só esse verso:<p><em>'The king is gone but he is not forgotten / This is the story of a Johnny Rotten / It's better to burn out than it is to rust'</em></p><p>Ou em português:</p><p><em>'O rei se foi mas ele não foi esquecido / Essa é a história de um Johnny Rotten / É melhor queimar do que enferrujar'</em></p><p>Se você não conhece, Johnny Rotten foi o guitarrista do Sex Pistols, uma banda de rock britânico que simbolizou escândalo na mídia, revolta juvenil e o nascimento do movimento punk em geral. Esse cara causou um imenso impacto na cultura durante o período em que esteve ativo na banda, e hoje em dia é tido como uma figura lendária da música. Seu nome pode ser encontrado em livros e artigos de história do século passado, e seu legado se prova relevante em um contexto cultural em geral. Johnny Rotten ainda está vivo, mas esse trecho exemplifica que o impacto explosivo de uma pessoa na terra pode deixá-la marcada para a história. Eu assumo que o contexto em que Neil Young imaginou esse verso era mais relacionado á vida útil do rock: de maneira similar a como o reinado de um líder resulta em um impacto histórico de séculos, a explosão de um rockstar na mídia e na cultura transforma a maneira que o povo pensa.</p><p>Porém, é aquilo, a arte é algo completamente aberto para interpretação, e essa música que possívelmente se trata de não deixar a própria vida enferrujar e fazer algo de valor com ela durante a passagem pode sim ser interpretada com um tom um pouco mais sombrio. Na própria letra existem metáforas sobre a morte, onde Young fala que existe a mesma naturalidade na benção de ser concebido do que na tragédia de ir embora. Aí vem aquele questionamento existencial: É melhor queimar ou desaparecer? Esse é um questionamento interno muito difícil de se chegar em uma conclusão. Cobain, pelo jeito, acreditava que ir embora de maneira explosiva era melhor do que sofrer em vida. Eu, pessoalmente, acredito que o 'fade away' seja mais interessante. Eu posso elaborar isso em um post futuro, mas é isso, cada um de nós vivemos nossa própria campanha single-player da vida, portanto devemos encontrar significado baseado no que temos como verdade na nossa realidade.</p><p><em>'Keep on rocking in the free world'</em>, resistindo.</p>",
    data_criacao=now(),
    data_modificacao=now();