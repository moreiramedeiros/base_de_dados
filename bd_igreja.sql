-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jul-2020 às 08:16
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_igreja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_balanco_mes`
--

CREATE TABLE `tb_balanco_mes` (
  `id` int(11) NOT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `valor_arrecadado` double DEFAULT NULL,
  `valor_deficit` double DEFAULT NULL,
  `valor_restante` double DEFAULT NULL,
  `data_regristro` datetime DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_chaves_usuario`
--

CREATE TABLE `tb_chaves_usuario` (
  `id` int(11) NOT NULL,
  `chave` varchar(100) NOT NULL,
  `nivel_acesso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_chaves_usuario`
--

INSERT INTO `tb_chaves_usuario` (`id`, `chave`, `nivel_acesso`) VALUES
(1, '1234', 'Usuário'),
(2, '4567', 'Administrador Local'),
(3, '7890', 'Administrador Geral');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_despesas`
--

CREATE TABLE `tb_despesas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `data_despesa` date DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_despesas`
--

INSERT INTO `tb_despesas` (`id`, `descricao`, `valor`, `data_despesa`, `id_igreja`) VALUES
(1, 'Obra/Manutenção', 444, '2019-11-25', 13),
(3, 'Energia', 222.33, '2019-11-25', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_dizimos`
--

CREATE TABLE `tb_dizimos` (
  `id` int(11) NOT NULL,
  `valor` double DEFAULT NULL,
  `data_dizimo` date DEFAULT NULL,
  `id_membro` int(11) DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_dizimos`
--

INSERT INTO `tb_dizimos` (`id`, `valor`, `data_dizimo`, `id_membro`, `id_igreja`) VALUES
(1, 1, '2019-10-11', 10, 2),
(2, 1, '2019-04-11', 18, 4),
(3, 222, '2019-04-11', 19, 2),
(4, 222.55, '2019-10-11', 10, 2),
(6, 100, '2019-11-11', 23, 10),
(7, 0, '2019-11-25', 7, 10),
(8, 4.6, '2019-11-25', 10, 2),
(9, 2.3, '2019-11-11', 10, 2),
(10, 0, '2019-11-26', 23, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_igrejas`
--

CREATE TABLE `tb_igrejas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_fundacao` date DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_igrejas`
--

INSERT INTO `tb_igrejas` (`id`, `nome`, `data_fundacao`, `cnpj`, `email`, `telefone`, `celular`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`) VALUES
(2, 'Igreja da Lúz Divina', '1111-11-11', '  .   .   /    -  ', '23333333333333333', '(22) 2222-2222', '(22) 2222-2222', '33331-111', '113333', 4, 'Cass', '33', '3444', 'AL'),
(4, 'Igreja Oliveira', '1960-09-01', '11.123.453/2467-75', 'madureira@gmail.com', '(21) 3090-0043', '(21) 4542-2334', '20550-100', 'Alfredo Souza Pinto', 4, 'Loja 2', 'Cascadura', 'Rio de Janeiro', 'RJ'),
(10, 'Igreja Deus', '1933-11-11', '11.123.453/2467-75', 'tg', '(66) 6666-6666', '(22) 2222-2222', '33331-111', '113333', 4, 'Cass', '33', '3444', 'AL'),
(13, 'Igreja de Filadélfia Silva', '1111-11-11', '  .   .   /    -  ', '23333333333333333', '(22) 2222-2222', '(22) 2222-2222', '11111-111', '11', 4, 'Cass', '33', '333333', 'AL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_membros`
--

CREATE TABLE `tb_membros` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_membros`
--

INSERT INTO `tb_membros` (`id`, `nome`, `data_nascimento`, `rg`, `cpf`, `email`, `telefone`, `celular`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cargo`, `id_igreja`) VALUES
(1, 'João', '1111-11-11', '22.222.222-2', '222.222.222-22', '2asd@111', '(  )     -    ', '(  )     -    ', '     -   ', '', 33, '', '', '', 'AC', NULL, NULL),
(2, 'João da Silva', '2011-12-22', '11.111.111-1', '222.222.222-22', '', '(11) 1111-1111', '(11) 2222-2222', '11111-111', 'Luis da Silva', 12, 'Brasilia', 'Lucas', 'Brasilia', 'RJ', NULL, NULL),
(3, 'João da Silva', '2022-12-22', '11.111.111-1', '222.222.222-22', '', '(11) 1111-1111', '(11) 2222-2222', '11111-111', 'Luis da Silva', 12, 'Brasilia', 'Lucas', 'Brasilia', 'RJ', NULL, NULL),
(4, '', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 22, '', '', '', 'AC', NULL, NULL),
(5, '', NULL, '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 22, '', '', '', 'AC', NULL, NULL),
(6, 'Isaac Moreira', '1999-08-31', '11.111.111-1', '222.222.222-22', 'isaac@gmail.com', '(21) 6666-6666', '(21) 5555-5555', '33333-333', 'Rua Marcelo Oliveira', 22, 'Rua da feira', 'Vila Isabel', 'Rio de Janeiro', 'RJ', NULL, NULL),
(7, 'João', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'DF', 'Membro', 10),
(8, 'Olivio Pinheiro da Silva', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Pastor', 4),
(10, 'Luis Gomes da Silva', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'SE', 'Pastor', 2),
(16, 'Luis Gomes', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'SE', 'Membro', 13),
(18, 'Maria Silva', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Membro', 4),
(19, 'Luisa', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Membro', 2),
(20, 'Marcio', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Membro', 2),
(21, 'Carlos', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 555, '', '', '', 'AC', 'Membro', 13),
(22, 'Miqueias', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 3, '', '', '', 'AC', 'Membro', 4),
(23, 'Katia', '1111-11-11', '88.888.888-8', '999.999.999-99', '', '(55) 5555-5555', '(66) 6666-6666', '11111-111', '', 3, '', '', '', 'AC', 'Membro', 10),
(24, 'Maria Silva', '1111-11-11', '45.555.555-5', '444.444.444-44', 's@ddddd', '(22) 2222-2222', '(11) 1111-1111', '11111-111', 'Rua Dois', 2, '55555555', 'Casa', '555', 'BA', 'Pastor', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ofertas`
--

CREATE TABLE `tb_ofertas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `data_oferta` date DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_ofertas`
--

INSERT INTO `tb_ofertas` (`id`, `descricao`, `valor`, `data_oferta`, `id_igreja`) VALUES
(1, 'Culto Quinta', 200, '2019-11-25', 10),
(2, 'Domingo', 4444.666, '2019-11-11', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `nivel_acesso` varchar(30) DEFAULT NULL,
  `id_igreja` int(11) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nome`, `login`, `data_nascimento`, `rg`, `cpf`, `email`, `telefone`, `celular`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `nivel_acesso`, `id_igreja`, `senha`) VALUES
(2, 'Lucas', 'moreiramedeiros3', '1111-11-11', '33.333.333-3', '444.444.444-44', '', '(21) 2222-2222', '(21) 1111-1111', '77777-777', '', 33, '', '', '', 'AC', 'Administrador Local', 10, '31733787'),
(3, 'Isaac Moreira Medeiros Gomes', 'moreiramedeiros', '2011-11-11', '33.333.333-3', '444.444.444-44', 'moreiramedeiros@gmail.com', '(21) 2222-2222', '(21) 1111-1111', '77777-777', 'Rua ABC', 33, 'Interfone 111', 'Fluminense', 'Rio de Janeiro', 'RJ', 'Administrador Geral', -1, '31733787'),
(5, 'Geraldo', '31733787', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 3, '', '', '', 'RJ', 'Usuário', -1, 'moreiramedeiros'),
(7, '', '123', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Usuário', -1, '123'),
(8, '', '1', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Usuário', -1, '1'),
(9, 'Luis', '111', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 2, '', '', '', 'AC', 'Administrador Local', 2, '111'),
(10, 'kkkkk', '', '1111-11-11', '  .   .   - ', '   .   .   -  ', '', '(  )     -    ', '(  )     -    ', '     -   ', '', 22, '', '', '', 'AC', 'Administrador Local', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_balanco_mes`
--
ALTER TABLE `tb_balanco_mes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_igreja` (`id_igreja`);

--
-- Indexes for table `tb_chaves_usuario`
--
ALTER TABLE `tb_chaves_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_despesas`
--
ALTER TABLE `tb_despesas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_igreja` (`id_igreja`);

--
-- Indexes for table `tb_dizimos`
--
ALTER TABLE `tb_dizimos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membro` (`id_membro`),
  ADD KEY `tb_dizimos_ibfk_2` (`id_igreja`);

--
-- Indexes for table `tb_igrejas`
--
ALTER TABLE `tb_igrejas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_membros`
--
ALTER TABLE `tb_membros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_membros_ibfk_1` (`id_igreja`);

--
-- Indexes for table `tb_ofertas`
--
ALTER TABLE `tb_ofertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_igreja` (`id_igreja`);

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_igreja` (`id_igreja`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_balanco_mes`
--
ALTER TABLE `tb_balanco_mes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_despesas`
--
ALTER TABLE `tb_despesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_dizimos`
--
ALTER TABLE `tb_dizimos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_igrejas`
--
ALTER TABLE `tb_igrejas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_ofertas`
--
ALTER TABLE `tb_ofertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_balanco_mes`
--
ALTER TABLE `tb_balanco_mes`
  ADD CONSTRAINT `tb_balanco_mes_ibfk_1` FOREIGN KEY (`id_igreja`) REFERENCES `tb_igrejas` (`id`);

--
-- Limitadores para a tabela `tb_despesas`
--
ALTER TABLE `tb_despesas`
  ADD CONSTRAINT `tb_despesas_ibfk_1` FOREIGN KEY (`id_igreja`) REFERENCES `tb_igrejas` (`id`);

--
-- Limitadores para a tabela `tb_dizimos`
--
ALTER TABLE `tb_dizimos`
  ADD CONSTRAINT `tb_dizimos_ibfk_1` FOREIGN KEY (`id_membro`) REFERENCES `tb_membros` (`id`),
  ADD CONSTRAINT `tb_dizimos_ibfk_2` FOREIGN KEY (`id_igreja`) REFERENCES `tb_igrejas` (`id`);

--
-- Limitadores para a tabela `tb_membros`
--
ALTER TABLE `tb_membros`
  ADD CONSTRAINT `tb_membros_ibfk_1` FOREIGN KEY (`id_igreja`) REFERENCES `tb_igrejas` (`id`);

--
-- Limitadores para a tabela `tb_ofertas`
--
ALTER TABLE `tb_ofertas`
  ADD CONSTRAINT `tb_ofertas_ibfk_1` FOREIGN KEY (`id_igreja`) REFERENCES `tb_igrejas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
