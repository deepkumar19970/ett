# noinspection SqlNoDataSourceInspectionForFile

CREATE TABLE `applications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sequence` bigint(19) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `applications_menus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
   `applicationid` bigint(19) DEFAULT NULL,
   `main_menu_id` bigint(19) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sequence` bigint(19) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
   `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `app_users` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `is_account_non_expired` bit(1) DEFAULT NULL,
                             `is_account_non_locked` bit(1) DEFAULT NULL,
                             `is_credencials_non_expired` bit(1) DEFAULT NULL,
                             `is_enabled` bit(1) DEFAULT NULL,
                             `password` varchar(255) DEFAULT NULL,
                             `role` varchar(255) DEFAULT NULL,
                             `username` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


update app_users set `role` ='ADMIN' where id =2;

CREATE TABLE `employees` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `userid` varchar(255) DEFAULT NULL,
                             `emp_code` bigint(19) DEFAULT NULL,
                             `name` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `application_permission` (
                                          `id` bigint NOT NULL AUTO_INCREMENT,
                                          `usertypeid`  bigint(19) DEFAULT NULL,
                                          `applicationid` bigint(19) DEFAULT NULL,
                                          PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `applications_menus_permission` (
                                                 `id` bigint NOT NULL AUTO_INCREMENT,
                                                 `usertypeid`  bigint(19) DEFAULT NULL,
                                                 `applications_menuid` bigint(19) DEFAULT NULL,
                                                 isview tinyint(1) default  null,
                                                 isdelete tinyint(1) default  null,
                                                 ismodefy tinyint(1) default  null,
                                                 isinsert tinyint(1) default  null,
                                                 isexport tinyint(1) default  null,

                                                 PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;