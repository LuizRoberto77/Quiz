-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2018 às 00:00
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--
CREATE DATABASE `quiz`;
use `quiz`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `alternativas`
--

CREATE TABLE `alternativas` (
  `idalternativa` int(11) NOT NULL,
  `idquestoes` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `Qdescricao` varchar(500) NOT NULL,
  `correta` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alternativas`
--

INSERT INTO `alternativas` (`idalternativa`, `idquestoes`, `idusuario`, `Qdescricao`, `correta`) VALUES
(1, 1, 1, 'O sol se reparte em crimes<br>  Espaçonaves, guerrilhas<br> Em cardinales bonitas <br>  Eu vou – Alegria, Alegria, de Caetano Veloso</html> ', 0),
(2, 1, 1, 'A gente quer ter voz ativa<br>\r\nNo nosso destino mandar<br>\r\nMas eis que chega a roda-viva<br>\r\nE carrega o destino pra lá – Roda Viva, Chico Buarque</html>\r\n', 1),
(3, 1, 1, 'Aquele que sabe o sufoco<br>\r\nDe um jogo tão duro<br>\r\nE apesar dos pesares<br>\r\nAinda se orgulha<br>\r\nDe ser brasileiro - E Vamos À Luta, Gonzaguinha</html>', 0),
(4, 1, 1, 'Minha dor é perceber<br>\r\nQue apesar de termos<br>\r\nFeito tudo o que fizemos<br>\r\nAinda somos os mesmos<br>\r\nE vivemos...<br>\r\nComo os nossos pais – Como Nossos Pais, de Elis Regina</html>\r\n', 0),
(5, 1, 1, 'Sei que nada será como antes, amanhã<br>\r\nQue notícias me dão dos amigos?<br>\r\nQue notícias me dão de você?<br>\r\nAlvoroço em meu coração- Nada Será Como Antes, Milton Nascimento</html>\r\n', 0),
(6, 2, 1, '“Há soldados armados... De armas na mão<br>\r\nNos quartéis lhes ensinam<br>\r\nUma antiga lição<br>\r\nDe morrer pela pátria<br>\r\nE viver sem razão” - Pra Não Dizer Que Não Falei Das Flores, de Geraldo Vandré</html>', 0),
(7, 2, 1, ' “Enquanto irmãos lutando lado a lado<br>\r\nNós, nós estávamos em menor número<br>\r\nMas nosso destino é vencer”- Victory Song, de Ensiferum</html>\r\n ', 0),
(8, 2, 1, '“Longe, longe de casa, para uma guerra<br>\r\nTravada em solo estrangeiro e<br>\r\nLonge, no desconhecido, contém seu conto<br>\r\nSua história esquecida<br>\r\nCobras fumantes, eterna é sua vitória” – Smoking Snakes, de Sabaton</html>\r\n', 1),
(9, 2, 1, '“Não há escapatória, granadas chovem sem remorso<br>\r\nHomens se afogam, sem chance para um destino de guerreiro<br>\r\nUma morte sufocante, adentre os portões do inferno” -The Longest Day, de\r\nIron Maiden</html>\r\n', 0),
(10, 2, 1, '“Lute com sangue<br>\r\nLute com aço<br>\r\nMorra com honra<br>\r\nNunca se renda<br>\r\nCorações destemidos<br>\r\nCheios de orgulho<br>\r\nNa glória iremos montar” - Die With Honor, de Manowar</html>\r\n', 0),
(11, 3, 1, 'Não é sobre o dinheiro, dinheiro, dinheiro...<br>\r\nNós só queremos fazer o mundo dançar<br>\r\nEsqueça sobre a etiqueta de preço - Price Tag, Jessie J<html>\r\n', 1),
(12, 3, 1, ' Não me amarra dinheiro não!<br>\r\nMas os mistérios...<br>\r\nNão me amarra dinheiro não!<br>\r\nBeleza Pura!- Beleza Pura, Caetano Veloso</html>', 0),
(13, 3, 1, 'De jeito maneira<br>\r\nNão quero dinheiro<br>\r\nQuero amor sincero<br>\r\nIsto é que eu espero - Não Quero Dinheiro, Tim Maia</html>', 0),
(14, 3, 1, 'Dinheiro, é demais<br>\r\nAgarre essa grana com as mãos e faça um estoque<br>\r\nCarro novo, caviar, quatro estrelas, sonhar acordado<br>\r\nAcho que comprarei um time de futebol para mim - Money, Pink Floyd</html>', 0),
(15, 3, 1, 'Sou um bom brasileiro<br>\r\nDe precisar mesmo<br>\r\nEu só preciso...<br>\r\nDinheiro- Dinheiro, Rita Lee</html>\r\n', 0),
(16, 4, 1, 'Por aqui passava um homem<br>\r\n(E como o povo se ria!)<br>\r\nLiberdade ainda que tarde<br>\r\nNos prometia - Tema de Os Inconfidentes, Chico Buarque</html>', 0),
(17, 4, 1, 'Quem me dera ao menos uma vez<br>\r\nTer de volta todo o ouro que entreguei a quem<br>\r\nConseguiu me convencer que era prova de amizade<br>\r\nSe alguém levasse embora até o que eu não tinha - Índios, Legião Urbana</html>\r\n', 0),
(18, 4, 1, 'Tinir de ferros... estalar do açoite...<br>\r\nLegiões de homens negros como a noite,<br> \r\nHorrendos a dançar... - O Navio Negreiro, Caetano Veloso</html> ', 0),
(19, 4, 1, ' Sergipe, Fazenda Angico<br>\r\nMeus crimes se terminaram<br>\r\nO criminoso era eu<br>\r\nE os santinhos me mataram<br>\r\nUm lampião se apagou<br>\r\nOutros lampiões ficaram - Lampião Falou, Luiz Gonzaga</html>\r\n', 1),
(20, 4, 1, 'É muita treta a farsa da comemoração dos 500 anos de enganação<br>\r\n500 anos de exploração, mentira e desigualdade<br>\r\nO que o branco português fez com meu povo foi cruel e covarde- Muita Treta, Pregador Luo</html>\r\n', 0),
(21, 5, 1, 'Nunca vi ninguém<br>\r\nViver tão feliz<br>\r\nComo eu no sertão<br>\r\nPerto de uma mata<br>\r\nE de um ribeirão- Deus e Eu No Sertão, Victor e Leo</html>\r\n', 0),
(22, 5, 1, ' Ganhei dinheiro lá fora mas foi tudo em vão<br>\r\nA natureza é meu mundo, eu sou o sertão<br>\r\nCorrer pelos campos floridos feito um menino<br>\r\nEsquecer as mágoas e os desatinos - Escolta de Vagalumes, Rick e Renner</html>\r\n\r\n\r\n', 0),
(23, 5, 1, 'De que me adianta viver na cidade<br>\r\nSe a felicidade não me acompanhar<br>\r\nAdeus, paulistinha do meu coração<br>\r\nLá pro meu sertão, eu quero voltar- Saudade de Minha Terra, Chitãozinho & Xororó</html>', 0),
(24, 5, 1, ' Já chegou o sanfoneiro e a pagodeira<br>\r\nÉ preciso conhecer o forró lá no meu sertão<br>\r\nCoisa igual e mais bonita juro por Deus não tem não - Forró no Sertão, Dominguinhos</html>\r\n', 0),
(25, 5, 1, 'Hoje longe, muitas léguas<br>\r\nNuma triste solidão<br>\r\nEspero a chuva cair de novo<br>\r\nPra mim voltar pro meu sertão - Asa Branca, Luiz Gonzaga</html>\r\n', 1),
(26, 7, 1, 'A beleza dói<br>\r\n(A beleza dói, a beleza dói)<br>\r\nMostramos o que temos de pior<br>\r\nA perfeição é a doença da nação- Pretty Hurts, Beyoncé</html>\r\n', 1),
(27, 7, 1, 'Porque, querido, você é um fogo de artifício<br>\r\nVá em frente, mostre o que você vale<br>\r\nFaça eles dizerem: Ah, ah, ah!<br>\r\nEnquanto você cruza o céu- Firework, Katy Perry</html>', 0),
(28, 7, 1, 'Vai no cabeleireiro<br>\r\nNo esteticista<br>\r\nMalha o dia inteiro<br>\r\nPinta de artista- Burguesinha, Seu Jorge</html>\r\n ', 0),
(29, 7, 1, 'E eu vejo suas cores verdadeiras<br>\r\nBrilhando por dentro<br>\r\nEu vejo suas cores verdadeiras<br>\r\nE é por isso que eu te amo- True Color, Cyndi Lauper</html>', 0),
(30, 7, 1, 'Agora eu encontrei quem eu sou<br>\r\nNão há jeito de segurar isso<br>\r\nSem mais esconder quem eu quero ser<br>\r\nEssa sou eu- This Is Me- Demi Lovato</html>\r\n', 0),
(31, 8, 1, 'Moro num país tropical, abençoado por Deus<br>\r\nE bonito por natureza (mas que beleza)<br>\r\nEm fevereiro (em fevereiro)<br>\r\nTem carnaval (tem carnaval) - País Tropical, Jorge Ben Jor</html>\r\n', 1),
(32, 8, 1, ' Com tanta gente que partiu<br>\r\nNum rabo de foguete, Chora<br>\r\nA nossa Pátria mãe gentil<br>\r\nChoram Marias e Clarisses - O Bêbado e a Equilibrista, Elis Regina</html>\r\n', 0),
(33, 8, 1, 'Brasil! Mostra tua cara<br>\r\nQuero ver quem paga<br>\r\nPra gente ficar assim<br>\r\nBrasil! Qual é o teu negócio?<br>\r\nO nome do teu sócio?<br>\r\nConfia em mim- Brasil, de Cazuza</html>', 0),
(34, 8, 1, 'Isto aqui ô ô<br>\r\nÉ um pouquinho de Brasil, Iaiá<br>\r\nDeste Brasil que canta e é feliz, feliz, feliz<br>\r\nÉ também um pouco de uma raça<br>\r\nQue não tem medo de fumaça ai, ai- Sandália de Prata, Ary Barroso</html>\r\n', 0),
(35, 8, 1, ' Nas favelas, no Senado<br>\r\nSujeira pra todo lado<br>\r\nNinguém respeita a Constituição<br>\r\nMas todos acreditam no futuro da nação- Que País é este- Legião Urbana</html>\r\n', 0),
(36, 9, 1, 'O marinheiro mata o pássaro de bom presságio<br>\r\nSeus companheiros reclamam contra o que ele fez<br>\r\nMas quando o nevoeiro desapareceu, eles o perdoam<br>\r\nE acabam fazendo parte do crime…</html>', 0),
(37, 9, 1, 'Um a um, sobre a lua rodeada de estrelas<br>\r\nRápido demais para gemer e suspirar<br>\r\nCada um virou seu rosto atormentado<br>\r\nE me amaldiçoou com seu olhar<br>\r\nQuatro vezes cinquenta homens<br>\r\nE eu não ouvi suspiro ou gemido<br>\r\nPesadamente, um vulto sem vida<br>\r\nEles caíram, um por um…</html>', 1),
(38, 9, 1, ' Então, o feitiço começa a se quebrar<br>\r\nO albatroz cai de seu pescoço<br>\r\nAfunda como chumbo no mar<br>\r\nEntão, cai a chuva!</html>\r\n', 0),
(39, 9, 1, 'Ouça os gemidos dos marinheiros mortos há muito tempo<br>\r\nVeja eles se moverem e começarem a levantar<br>\r\nCorpos levantados por bons espíritos<br>\r\nNenhum deles falam, e eles não tem vida em seus olhos....</html>\r\n', 0),
(40, 9, 1, 'Agora finalmente a maldição terminou<br>\r\nE o marinheiro avista sua casa<br>\r\nEspíritos saem dos corpos mortos a tanto tempo<br>\r\nFormam sua própria luz e o marinheiro é deixado só</html>\r\n ', 0),
(41, 11, 1, 'Algumas procuras, nunca encontrando o caminho<br>\r\nBrevemente, eles vão se desgastando<br>\r\nEu encontrei você, algo me disse para ficar<br>\r\nEu cedi aos caminhos egoístas<br>\r\nE como eu sinto a falta de alguém para abraçar<br>\r\nQuando a esperança começa a desaparecer - Dear God, Avenged Sevenfold</html>\r\n\r\n\r\n\r\n\r\n', 0),
(42, 11, 1, 'Em qualquer lugar, eu me reviro<br>\r\nNão há uma resposta<br>\r\nPara a minha alma apreender<br>\r\nO que era real<br>\r\nJá não tem significado<br>\r\nAinda assim eu sinto que eu pertenço<br>\r\nNum mundo à sua volta - Over and Done, Amaranthe</html>\r\n\r\n', 0),
(43, 11, 1, 'Estou cansado de ser o que você quer que eu seja<br>\r\nMe sentindo tão sem esperança, perdido abaixo da superfície<br>\r\nEu não sei o que você está esperando de mim<br>\r\nVivendo sob a pressão de seguir seus passos - Numb, Linkin Park</html>\r\n', 1),
(44, 11, 1, 'Com o tempo, a criança atrai<br>\r\nEste menino chicoteado feito errado<br>\r\nPrivado de todos os seus pensamentos<br>\r\nO jovem luta sem parar, ele é conhecido<br>\r\nUm juramento ao seu próprio<br>\r\nQue nunca a partir deste dia<br>\r\nSua vontade eles vão tirar - The Unforgiven, Metallica</html>\r\n', 0),
(45, 11, 1, 'Em meu coração, em minha alma<br>\r\nEu realmente odeio pagar esse castigo<br>\r\nDeveria ser forte, jovem e corajoso<br>\r\nMas a única coisa que eu sinto é dor - A Tale That Wasn`t Right, Helloween</html>\r\n\r\n', 0),
(46, 12, 1, 'Eternos rivais seguem destilando ódio<br>\r\nQuantos nesse dia morreram na guerra pelo petróleo<br>\r\nQuantos mais nessa noite fecharão os olhos<br>\r\nNão tornarão abri-los quando o dia raiar – Eu Desejo, Pregador Luo</html>', 0),
(47, 12, 1, 'Não tem amigos, não vê garotas<br>\r\nSó gente morta caindo ao chão<br>\r\nAo seu país não voltará<br>\r\nPois está morto no Vietnã- Era Um Garoto Que Como Eu Amava Os Beatles e Os Rolling Stones, Engenheiros do Hawaii</html>', 0),
(48, 12, 1, 'Tantas guerras, dezenas de liquidações<br>\r\nTrazendo-nos promessas, deixando-nos pobres<br>\r\nEu ouvi dizer, o amor é o caminho<br>\r\nO amor é a resposta, que é o que eles dizem - Wavin Flag, Knaan </html>', 0),
(49, 12, 1, 'Chega um momento, quando ouvimos uma certa chamada<br>\r\nQuando o mundo tem que vir junto como um só<br>\r\nHá pessoas morrendo<br>\r\nE está na hora de dar uma mão a vida<br> \r\nO maior presente de todos - We are the World, Michael Jackson & Lionel Ritchie</html> \r\n ', 1),
(50, 12, 1, 'Faça uma cova para o soldado desconhecido<br>\r\nAninhado em seu vazio ombro<br>\r\nO soldado desconhecido - The Unknown Soldier, The Doors</html>\r\n', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontuacao`
--

CREATE TABLE `pontuacao` (
  `idpontuacao` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `pontos` int(10) UNSIGNED NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pontuacao`
--

INSERT INTO `pontuacao` (`idpontuacao`, `idusuario`, `pontos`, `data`) VALUES
(1, 1, 8, '2018-04-27 12:32:21'),
(2, 2, 3, '2018-04-27 12:33:10'),
(3, 2, 6, '2018-04-27 12:33:47'),
(4, 1, 7, '2018-04-27 12:34:00'),
(5, 6, 9, '2018-04-27 12:38:46'),
(6, 4, 5, '2018-04-27 12:39:29'),
(7, 3, 2, '2018-04-27 12:40:23'),
(8, 5, 4, '2018-04-27 12:40:41'),
(9, 7, 10, '2018-04-27 12:41:03'),
(10, 2, 7, '2018-04-27 12:41:26'),
(11, 2, 8, '2018-05-20 18:47:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `idquestoes` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`idquestoes`, `descricao`) VALUES
(1, '<html>Durante a Ditadura Militar Brasileira, a censura e a repressão, eram práticas comuns contra opositores ao regime.<br> Dessa forma, os cantores, usaram a música como forma de protesto.<br><br>\r\n<b>Uma crítica diretamente a censura está presente na música:</b></html>'),
(2, '<html>O Brasil entrou na Segunda Guerra Mundial, em decorrência de um ataque de submarinos alemães contra<br> navios brasileiros. Sob o ditado “É mais fácil uma cobra fumar do que o Brasil entrar na Guerra” a FEB (Força Expedicionária Brasileira) foi enviada para a Itália, onde sob forte ataque alemão, foi ordenado que recuasse. Mas 3 soldados decidiram ficar e lutar...<br><br>\r\n \r\n<b>Esse fato é visto na música:<b><html>\r\n'),
(3, '<html>Com princípios capitalistas, o consumismo e a riqueza  se tornou a principal característica da sociedade atual.<br><br>\r\n\r\n<b>Uma crítica a ostentação está na música:</b></html>\r\n\r\n'),
(4, '<html>O período colonial brasileiro, vai de 1500 com a chegada dos portugueses até 1822 com a Independência<br> do país:<br><br>\r\n\r\n<b>Uma música que não retrata acontecimentos que fizeram parte desse período é:</b></html>\r\n'),
(5, '<html>O sertão nordestino é uma região caracterizada por aspectos culturais como o forró e aspectos naturais como<br> a escassez de chuvas.<br><br>\r\n\r\n<b>Uma música que retrata o êxodo rural é:</b></html>\r\n'),
(7, '<html>A sociedade impõe padrões de beleza, onde muitas vezes pessoas que não se encaixam no padrão imposto<br> são vítimas de preconceito ou recorrem a métodos que podem prejudicar a saúde para se enquadrar nessa idealização de beleza.<br><br>\r\n\r\n<b>A música que faz uma crítica direta a essa imposição de valores é:</b><html>\r\n'),
(8, '<html>O Brasil é um país composto de diversidades étnicas, culturais e naturais. Mas também caracterizado pelas<br> desigualdades sociais e corrupção.<br><br>\r\n\r\n<b>Uma música em que o ufanismo está presente é</b></html>'),
(9, '<html>Dentre todas as coisas que aconteceram com os marinheiros, uma delas foi uma aposta entre Ela e a Morte.<br> Para ver quem vai ficar com tripulação…<br><br>\r\n\r\n<b>Na música Rime of the Ancient Mariner da banda Iron Maiden, em que parte a morte faz sua(s) vítima(s)?</b><html>\r\n\r\n'),
(11, '<html>A depressão é uma doença, conhecida como o mal do século 21, sendo os sintomas mais comuns a tristeza<br> e o desânimo.<br><br>\r\n<b>Uma música que tem temática depressiva é:</b><html>\r\n                             '),
(12, '<html>As diversas guerras ao longo da história promoveram intensas manifestações pelo alcance da paz.<br><br>\r\n \r\n<b>Uma idealização da paz está na música:</b></html>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(10) UNSIGNED NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `tipo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nickname`, `nome`, `senha`, `tipo`) VALUES
(1, 'roberto', 'luiz', '123', '1'),
(2, 'dragon', 'joao', '123', '2'),
(3, 'rocket', 'ADM', '123', '1'),
(4, 'nvkenv', 'neifonef', '123', '2'),
(5, 'efebnfe', 'egegewgbgngn', '123', '2'),
(6, 'bvdgavs', 'abfba', '123', '2'),
(7, 'KJBwvlb', 'vvlçaçmnvlm', '123', '2'),
(8, 'vsubhvudb', 'bnernbr', '123', '1'),
(9, 'vevbev', 'brvubhvursbn', '1234', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`idalternativa`),
  ADD KEY `alternativas_ibfk_1` (`idquestoes`),
  ADD KEY `alternativas_ibfk_2` (`idusuario`);

--
-- Indexes for table `pontuacao`
--
ALTER TABLE `pontuacao`
  ADD PRIMARY KEY (`idpontuacao`),
  ADD KEY `pontuacao_ibfk_1` (`idusuario`);

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`idquestoes`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pontuacao`
--
ALTER TABLE `pontuacao`
  MODIFY `idpontuacao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questoes`
--
ALTER TABLE `questoes`
  MODIFY `idquestoes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`idquestoes`) REFERENCES `questoes` (`idquestoes`),
  ADD CONSTRAINT `alternativas_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Limitadores para a tabela `pontuacao`
--
ALTER TABLE `pontuacao`
  ADD CONSTRAINT `pontuacao_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
