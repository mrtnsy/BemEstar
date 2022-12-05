-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2022 às 02:36
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bemestar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `ID_Curso` int(11) NOT NULL,
  `Nome_Curso` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`ID_Curso`, `Nome_Curso`) VALUES
(1, 'Biologia'),
(2, 'Farmácia'),
(3, 'Medicina'),
(4, 'Veterinária');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE `exame` (
  `NUM_Exame` int(11) NOT NULL,
  `FKCod_Paciente` int(11) NOT NULL,
  `FKCod_Usuario` int(11) NOT NULL,
  `dta_exame` date NOT NULL,
  `gli_exame` int(11) NOT NULL,
  `col_exame` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`NUM_Exame`, `FKCod_Paciente`, `FKCod_Usuario`, `dta_exame`, `gli_exame`, `col_exame`) VALUES
(1, 7, 32, '2020-10-10', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `Cod_Paciente` int(11) NOT NULL,
  `Nome_Paciente` varchar(40) NOT NULL,
  `Sex_Paciente` char(1) NOT NULL,
  `CEP_Paciente` varchar(9) NOT NULL,
  `UF_Paciente` varchar(2) NOT NULL,
  `Cid_Paciente` varchar(35) NOT NULL,
  `End_Paciente` varchar(40) NOT NULL,
  `Bai_Paciente` varchar(40) NOT NULL,
  `Com_Paciente` varchar(40) NOT NULL,
  `DTN_Paciente` date NOT NULL,
  `Fone_Paciente` varchar(13) NOT NULL,
  `Email_Paciente` varchar(30) NOT NULL,
  `Pes_Paciente` float NOT NULL,
  `Alt_Paciente` float NOT NULL,
  `Fuma_Paciente` bit(1) NOT NULL,
  `Bebe_Paciente` bit(1) NOT NULL,
  `Hiper_Paciente` bit(1) NOT NULL,
  `Diab_Paciente` bit(1) NOT NULL,
  `Dac_Paciente` bit(1) NOT NULL,
  `Doe_Paciente` varchar(100) NOT NULL,
  `Med_Paciente` bit(1) NOT NULL,
  `Rem_Paciente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`Cod_Paciente`, `Nome_Paciente`, `Sex_Paciente`, `CEP_Paciente`, `UF_Paciente`, `Cid_Paciente`, `End_Paciente`, `Bai_Paciente`, `Com_Paciente`, `DTN_Paciente`, `Fone_Paciente`, `Email_Paciente`, `Pes_Paciente`, `Alt_Paciente`, `Fuma_Paciente`, `Bebe_Paciente`, `Hiper_Paciente`, `Diab_Paciente`, `Dac_Paciente`, `Doe_Paciente`, `Med_Paciente`, `Rem_Paciente`) VALUES
(7, 'Lucas Alves', 'M', '14020670', 'EX', 'Ribeirao Preto', '124', 'Santa cruz', 'apto 111', '1999-03-12', '16996287646', 'yuri.martins@sou.unaerp.edu.br', 62.5, 1.7, b'1', b'1', b'1', b'1', b'1', 'muitas', b'1', 'zolpidem'),
(8, 'Joao Vinicius Andrade', 'M', '14020670', 'EX', 'RIBIFI', 'GDFGS', 'DFSDF', '232', '2000-10-10', '312312312', 'fasdfdsaf@gmail.com', 70, 2, b'1', b'0', b'0', b'0', b'0', 'nenhuma', b'0', 'nenhum'),
(9, 'Arthur Menezes', 'M', '14020670', 'EX', 'RIBIFI', 'GDFGS', 'DFSDF', '232', '2000-10-10', '312312312', 'fasdfdsaf@gmail.com', 70, 2, b'1', b'0', b'0', b'0', b'0', 'nenhuma', b'0', 'nenhum'),
(10, 'José Freitas', '', '12345670', 'PI', 'JARDINOPOLIS', '123', 'Santa cruz', '111', '2000-03-12', '2312312312', 'yuripedrocchi01@gmail.com', 55, 1.5, b'1', b'1', b'1', b'1', b'1', 'MUITAS', b'1', 'zoopiden'),
(11, 'Bruna Carvalho', 'F', '1434234', 'PR', 'ererr', 'errwr', 'ewrweqr', '34123', '3333-03-31', '123123123', 'siqueiralau666@icloud.com', 34, 3, b'1', b'1', b'1', b'1', b'1', 'nao', b'1', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Cod_Usuario` int(11) NOT NULL,
  `FKID_Curso` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `DTN` date NOT NULL,
  `Senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Cod_Usuario`, `FKID_Curso`, `Nome`, `DTN`, `Senha`) VALUES
(32, 3, 'Yuri Pedrocchi Martins', '2000-09-12', '123'),
(36, 3, 'Daniel jumento', '2222-01-11', '1'),
(37, 2, 'Gilberto Mendes', '1982-10-14', '23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID_Curso`);

--
-- Índices para tabela `exame`
--
ALTER TABLE `exame`
  ADD PRIMARY KEY (`NUM_Exame`),
  ADD KEY `FKCod_Paciente` (`FKCod_Paciente`),
  ADD KEY `FKCod_Usuario` (`FKCod_Usuario`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Cod_Paciente`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Cod_Usuario`),
  ADD KEY `FKID_Curso` (`FKID_Curso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `ID_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `exame`
--
ALTER TABLE `exame`
  MODIFY `NUM_Exame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `Cod_Paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Cod_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `exame`
--
ALTER TABLE `exame`
  ADD CONSTRAINT `exame_ibfk_1` FOREIGN KEY (`FKCod_Paciente`) REFERENCES `paciente` (`Cod_Paciente`),
  ADD CONSTRAINT `exame_ibfk_2` FOREIGN KEY (`FKCod_Usuario`) REFERENCES `usuario` (`Cod_Usuario`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKID_Curso` FOREIGN KEY (`FKID_Curso`) REFERENCES `curso` (`ID_Curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
