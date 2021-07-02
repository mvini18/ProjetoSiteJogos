CREATE DATABASE `db_jogos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `tb_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `senha` varchar(45) NOT NULL,
  `tipo_conta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tb_info_jogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `engine` varchar(45) DEFAULT NULL,
  `graficos` varchar(45) DEFAULT NULL,
  `generos` varchar(45) DEFAULT NULL,
  `producao` varchar(45) DEFAULT NULL,
  `lancamento` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `jogabilidade` varchar(45) DEFAULT NULL,
  `estilo_jogo` varchar(45) DEFAULT NULL,
  `plataformas` varchar(45) DEFAULT NULL,
  `avaliacao` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tb_usuario_info_jogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_info_jogos` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_idx` (`id_usuario`),
  KEY `FK2_idx` (`id_info_jogos`),
  CONSTRAINT `FK1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`),
  CONSTRAINT `FK2` FOREIGN KEY (`id_info_jogos`) REFERENCES `tb_info_jogos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `tb_sugestoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `sugestao` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sugestao_user_idx` (`id_user`),
  CONSTRAINT `fk_sugestao_user` FOREIGN KEY (`id_user`) REFERENCES `tb_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

