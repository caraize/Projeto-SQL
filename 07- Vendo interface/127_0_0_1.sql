#usando PHPMyAdmin

#criando bd pelo PHPMyAdmin e pegando o código via terminal > show create database exemplo;
CREATE DATABASE `exemplo` 

#criando tabela pelo PHPMyAdmin e pegando o código via terminal > show create table amigos;
CREATE TABLE `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#alterando a linha da tabela tel para telefone
ALTER TABLE `amigos` CHANGE `tel` `telefone` VARCHAR(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL;

#adicionando coluna idade depois de nome
ALTER TABLE `amigos` ADD `idade` INT NOT NULL AFTER `nome`;

#apagando coluna idade
"ALTER TABLE `amigos` DROP `idade`;"

#adicionando coluna sexo
ALTER TABLE `amigos` ADD `sexo` ENUM('M', 'F') NOT NULL AFTER `nome`;


#inserindo dados na tabela
INSERT INTO `amigos` (`id`, `nome`, `sexo`, `telefone`) VALUES (NULL, 'Maria', 'F', '22223333'), (NULL, 'Joao', 'M', '33332222');
INSERT INTO `amigos` (`id`, `nome`, `sexo`, `telefone`) VALUES (NULL, 'José', 'M', '44443333'), (NULL, 'Ana', 'F', '11112222');

#atualizando informações com Update
UPDATE `amigos` SET `telefone` = '99998888' WHERE `amigos`.`id` = 2;

#apagando dados da tabela
"DELETE FROM amigos WHERE `amigos`.`id` = 4"?

#apagando a tabela amigos
DROP TABLE `amigos`

#apagando o banco de dados exemplo
DROP DATABASE `exemplo`;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05/03/2026 às 04:58
-- Versão do servidor: 8.4.7
-- Versão do PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `amigos`
--

DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `sexo`, `telefone`) VALUES
(1, 'Maria', 'F', '22223333'),
(2, 'Joao', 'M', '99998888'),
(3, 'José', 'M', '44443333');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



