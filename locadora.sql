-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 27/04/2016 às 21:48
-- Versão do servidor: 5.5.38-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `endereco`, `email`, `data_nascimento`) VALUES
(1, 'Joselito', 'Endereço do Joselito', 'emaildoJoselito@email.com', '2011-01-01'),
(2, 'Fernando', 'endereço do Fernando', 'fer@nan.do', '1902-01-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE IF NOT EXISTS `filmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `genero` varchar(80) NOT NULL,
  `lancamento` tinyint(1) NOT NULL,
  `sinopse` longtext NOT NULL,
  `data` date NOT NULL,
  `capa` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Fazendo dump de dados para tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nome`, `genero`, `lancamento`, `sinopse`, `data`, `capa`) VALUES
(1, 'Terminator', 'Ação', 0, 'Em 2029, a resistência humana contra as máquinas é comandada por John Connor (Jason Clarke). Ao saber que a Skynet enviou um exterminador ao passado com o objetivo de matar sua mãe, Sarah Connor (Emilia Clarke), antes de seu nascimento, John envia o sargento Kyle Reese (Jai Courtney) de volta ao ano de 1984, na intenção de garantir a segurança dela. Entretanto, ao chegar Reese é surpreendido pelo fato de que Sarah tem como protetor outro exterminador T-800 (Arnold Schwarzenegger), enviado para protegê-la quando ainda era criança.', '0000-00-00', ''),
(2, 'Hostel', 'Terror', 0, '', '0000-00-00', ''),
(3, 'Rec', 'Terror', 1, '', '0000-00-00', ''),
(4, 'Rec', 'Terror', 1, '', '0000-00-00', ''),
(5, 'Rec', 'Terror', 1, '', '0000-00-00', ''),
(6, 'Donnie Darko', 'Terror', 0, '', '0000-00-00', ''),
(7, 'Donnie Darko', 'Terror', 0, '', '0000-00-00', ''),
(8, 'Donnie Darko', 'Terror', 0, '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE IF NOT EXISTS `genero` (
  `nome` varchar(80) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `genero`
--

INSERT INTO `genero` (`nome`) VALUES
('Ação'),
('Animação'),
('Aventura'),
('Biografia'),
('Clássicos'),
('Comédia'),
('Crime'),
('Documentário'),
('Drama'),
('Esporte'),
('Família'),
('Fantasia'),
('Faroeste'),
('Ficção Científica'),
('Guerra'),
('História'),
('Infantil'),
('Mistério'),
('Musical'),
('Romance'),
('Suspense'),
('Terror'),
('Thriller');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
