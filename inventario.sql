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

 Date: 07/09/2022 00:03:15
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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of datoscontacto
-- ----------------------------
INSERT INTO `datoscontacto` VALUES (5, 3, '44', 4);
INSERT INTO `datoscontacto` VALUES (6, 11, '22', 4);
INSERT INTO `datoscontacto` VALUES (7, 8866, 'dire999', 5);
INSERT INTO `datoscontacto` VALUES (8, 6688, 'dir888', 5);
INSERT INTO `datoscontacto` VALUES (9, 4455, 'dirtres', 6);
INSERT INTO `datoscontacto` VALUES (10, 5544, 'dircuatro', 6);
INSERT INTO `datoscontacto` VALUES (11, 6677, 'dirtres', 7);
INSERT INTO `datoscontacto` VALUES (12, 7766, 'dircuatro', 7);
INSERT INTO `datoscontacto` VALUES (13, 1, 'dir 1', 8);
INSERT INTO `datoscontacto` VALUES (14, 2, 'dir 2', 8);
INSERT INTO `datoscontacto` VALUES (15, 0, '', 9);
INSERT INTO `datoscontacto` VALUES (16, 0, '', 9);

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `id_producto` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantidad` decimal(20, 3) NULL DEFAULT NULL,
  `precio` decimal(20, 3) NULL DEFAULT NULL,
  `categoria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (10, 'cod1', 'PAPA', 49.500, 10009.900, 'verduras');
INSERT INTO `producto` VALUES (11, 'cod2', 'ARROZ', 100.500, 100.150, 'primera ');
INSERT INTO `producto` VALUES (12, 'cod3', 'azucar', 450.000, 1452.100, 'primera');
INSERT INTO `producto` VALUES (13, 'cod4', 'frijol', 741.000, 145.120, 'granos');
INSERT INTO `producto` VALUES (14, 'null', 'null', 0.000, 0.000, 'null');
INSERT INTO `producto` VALUES (15, 'cod5', 'panela', 4510.100, 123.100, 'dulce');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (4, 'placita', '333333');
INSERT INTO `proveedor` VALUES (5, 'frutijugos', '123444');
INSERT INTO `proveedor` VALUES (6, 'local tres', '1266666666-1');
INSERT INTO `proveedor` VALUES (7, 'pru', '123444');
INSERT INTO `proveedor` VALUES (8, 'prueba', '45644565-1');
INSERT INTO `proveedor` VALUES (9, 'carnecol', '777777-1');

-- ----------------------------
-- Table structure for proveedorproducto
-- ----------------------------
DROP TABLE IF EXISTS `proveedorproducto`;
CREATE TABLE `proveedorproducto`  (
  `producto_id` bigint NOT NULL,
  `proveedor_id` bigint NOT NULL,
  INDEX `fk_producto`(`producto_id`) USING BTREE,
  INDEX `fk_proveedor`(`proveedor_id`) USING BTREE,
  CONSTRAINT `fk_producto` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proveedorproducto
-- ----------------------------
INSERT INTO `proveedorproducto` VALUES (11, 6);
INSERT INTO `proveedorproducto` VALUES (10, 6);
INSERT INTO `proveedorproducto` VALUES (11, 7);
INSERT INTO `proveedorproducto` VALUES (11, 8);
INSERT INTO `proveedorproducto` VALUES (10, 7);
INSERT INTO `proveedorproducto` VALUES (10, 8);
INSERT INTO `proveedorproducto` VALUES (10, 4);
INSERT INTO `proveedorproducto` VALUES (10, 9);
INSERT INTO `proveedorproducto` VALUES (11, 9);
INSERT INTO `proveedorproducto` VALUES (12, 9);
INSERT INTO `proveedorproducto` VALUES (13, 9);
INSERT INTO `proveedorproducto` VALUES (15, 9);
INSERT INTO `proveedorproducto` VALUES (14, 9);
INSERT INTO `proveedorproducto` VALUES (10, 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'lcalvarez', 'MTIz', 'julio cesar', 'alvarez cuaces', 'cll 10 # 42 c 25', 'lcalvarez@unicauca.educ.o', 1, 'admin');
INSERT INTO `usuario` VALUES (2, 'admin', 'MTIz', 'nombreuno', 'nombredos', 'direccion', 'correo', 1, 'admin');
INSERT INTO `usuario` VALUES (3, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (4, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (5, 'usera', '', 'b', 'b', 'b', 'b', 1, 'usuario');
INSERT INTO `usuario` VALUES (6, 'prueba', 'MTIz', '456', '123456', '123456', '123', 1, 'admin');

SET FOREIGN_KEY_CHECKS = 1;
