/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : inventario

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 30/08/2022 01:14:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datoscontacto
-- ----------------------------
DROP TABLE IF EXISTS `datoscontacto`;
CREATE TABLE `datoscontacto`  (
  `id_datoscontacto` bigint NOT NULL AUTO_INCREMENT,
  `telefono` bigint NULL DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_proveedor` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id_datoscontacto`) USING BTREE,
  INDEX `fk_datosproveedor`(`id_proveedor`) USING BTREE,
  CONSTRAINT `fk_datosproveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datoscontacto
-- ----------------------------
INSERT INTO `datoscontacto` VALUES (5, 1, '2', 4);
INSERT INTO `datoscontacto` VALUES (6, 3, '4', 4);
INSERT INTO `datoscontacto` VALUES (7, 8866, 'dire123', 5);
INSERT INTO `datoscontacto` VALUES (8, 6688, 'dir321', 5);
INSERT INTO `datoscontacto` VALUES (9, 4455, 'dirtres', 6);
INSERT INTO `datoscontacto` VALUES (10, 5544, 'dircuatro', 6);
INSERT INTO `datoscontacto` VALUES (11, 6677, 'dirtres', 7);
INSERT INTO `datoscontacto` VALUES (12, 7766, 'dircuatro', 7);
INSERT INTO `datoscontacto` VALUES (13, 1, 'dir 1', 8);
INSERT INTO `datoscontacto` VALUES (14, 2, 'dir 2', 8);

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `id_proveedor` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`) USING BTREE,
  INDEX `id_proveedor`(`id_proveedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (4, 'placita', '1111111111');
INSERT INTO `proveedor` VALUES (5, 'pru', '123444');
INSERT INTO `proveedor` VALUES (6, 'local tres', '1266666666-1');
INSERT INTO `proveedor` VALUES (7, 'pru', '123444');
INSERT INTO `proveedor` VALUES (8, 'prueba', '45644565-1');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `id_usuario` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombres` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `direccion` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL,
  `rol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'lcalvarez', 'MTIz', 'julio cesar', 'alvarez cuaces', 'cll 10 # 42 c 25', 'lcalvarez@unicauca.educ.o', 1, 'admin');
INSERT INTO `usuario` VALUES (2, 'useruno', 'MjEz', 'nombreuno', 'nombredos', 'direccion', 'correo', 1, 'usuario');
INSERT INTO `usuario` VALUES (3, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (4, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (5, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (6, 'prueba', 'MTIz', '456', '123456', '123456', '123', 1, 'admin');

SET FOREIGN_KEY_CHECKS = 1;
