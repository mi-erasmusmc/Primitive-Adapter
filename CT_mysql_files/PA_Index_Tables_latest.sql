CREATE TABLE `index_findingss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finding_identifier` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `specimen_organ` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `specimen_organ_code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `specimen_organ_vocabulary` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `finding` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `finding_code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `finding_vocabulary` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `severity` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `observation` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `frequency` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `dose` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `timepoint` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `treatment_related` tinyint(1) NOT NULL DEFAULT '0',
  `compound_id` int(11) DEFAULT NULL,
  `study_id` int(11) DEFAULT NULL,
  `dose_unit` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `timepoint_unit` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `finding_type` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finding_compound_IDX` (`compound_id`),
  KEY `finding_study_IDX` (`study_id`),
  KEY `finding_IDX` (`finding`(191)),
  KEY `specimen_organ_IDX` (`specimen_organ`(191)),
  KEY `finding_code_IDX` (`finding_code`(191)),
  KEY `finding_vocabulary_IDX` (`finding_vocabulary`(191)),
  KEY `specimen_organ_code_IDX` (`specimen_organ_code`(191)),
  KEY `specimen_organ_vocabulary_IDX` (`specimen_organ_vocabulary`(191)),
  CONSTRAINT `index_finding_ibfk_1` FOREIGN KEY (`compound_id`) REFERENCES `index_compound` (`id`),
  CONSTRAINT `index_finding_ibfk_2` FOREIGN KEY (`study_id`) REFERENCES `index_study` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2741177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `index_compound_study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_compound_id` int(11) DEFAULT NULL,
  `index_study_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_compound_id` (`index_compound_id`),
  KEY `index_study_id` (`index_study_id`),
  CONSTRAINT `index_compound_study_ibfk_1` FOREIGN KEY (`index_compound_id`) REFERENCES `index_compound` (`id`),
  CONSTRAINT `index_compound_study_ibfk_2` FOREIGN KEY (`index_study_id`) REFERENCES `index_study` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

CREATE TABLE `index_compound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compound_identifier` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inchi` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inchikey` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `smiles` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `organisation` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `confidentiality` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compound_identifier_IDX` (`compound_identifier`(191))
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

CREATE TABLE `index_study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study_identifier` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `study_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `species` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `species_code` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `species_vocabulary` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `age` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `strain` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `strain_code` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `strain_vocabulary` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `route` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `route_code` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `route_vocabulary` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `duration` smallint(6) DEFAULT NULL,
  `duration_unit` varchar(55) DEFAULT NULL,
  `phase` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `organisation` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `confidentiality` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `study_identifier_IDX` (`study_identifier`(191))
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;
