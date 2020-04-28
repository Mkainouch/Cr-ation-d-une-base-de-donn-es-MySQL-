/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     4/28/2020 10:50:18 AM                        */
/*==============================================================*/


alter table Carrosserie 
   drop foreign key FK_CARROSSE_ASSOCIATI_BUS;

alter table Conducteur 
   drop foreign key FK_CONDUCTE_ASSOCIATI_BUS;

alter table Enfant 
   drop foreign key FK_ENFANT_ASSOCIATI_BUS;

alter table Roue 
   drop foreign key FK_ROUE_ASSOCIATI_BUS;

alter table Siege 
   drop foreign key FK_SIEGE_ASSOCIATI_BUS;

alter table Vitre 
   drop foreign key FK_VITRE_ASSOCIATI_BUS;

drop table if exists Bus;


alter table Carrosserie 
   drop foreign key FK_CARROSSE_ASSOCIATI_BUS;

drop table if exists Carrosserie;


alter table Conducteur 
   drop foreign key FK_CONDUCTE_ASSOCIATI_BUS;

drop table if exists Conducteur;


alter table Enfant 
   drop foreign key FK_ENFANT_ASSOCIATI_BUS;

drop table if exists Enfant;


alter table Roue 
   drop foreign key FK_ROUE_ASSOCIATI_BUS;

drop table if exists Roue;


alter table Siege 
   drop foreign key FK_SIEGE_ASSOCIATI_BUS;

drop table if exists Siege;


alter table Vitre 
   drop foreign key FK_VITRE_ASSOCIATI_BUS;

drop table if exists Vitre;

/*==============================================================*/
/* Table: Bus                                                   */
/*==============================================================*/
create table Bus
(
   numero_Immatriculation varchar(254) not null  comment '',
   date_mise__service   datetime  comment '',
   nombre_annees_service int  comment '',
   poids_total          int  comment '',
   primary key (numero_Immatriculation)
);

/*==============================================================*/
/* Table: Carrosserie                                           */
/*==============================================================*/
create table Carrosserie
(
   numero_carrosserie_  int not null  comment '',
   numero_Immatriculation varchar(254)  comment '',
   poids                int  comment '',
   couleur              varchar(254)  comment '',
   primary key (numero_carrosserie_),
   key AK_Identifier_1 (numero_carrosserie_)
);

/*==============================================================*/
/* Table: Conducteur                                            */
/*==============================================================*/
create table Conducteur
(
   numero_permis        varchar(254) not null  comment '',
   numero_Immatriculation varchar(254) not null  comment '',
   nom                  varchar(254)  comment '',
   prenom               varchar(254)  comment '',
   sexe                 varchar(254)  comment '',
   age                  int  comment '',
   primary key (numero_permis)
);

/*==============================================================*/
/* Table: Enfant                                                */
/*==============================================================*/
create table Enfant
(
   id                   int not null  comment '',
   numero_Immatriculation varchar(254) not null  comment '',
   nom                  varchar(254)  comment '',
   prenom               varchar(254)  comment '',
   sexe                 varchar(254)  comment '',
   age                  int  comment '',
   primary key (id)
);

/*==============================================================*/
/* Table: Roue                                                  */
/*==============================================================*/
create table Roue
(
   numero_Immatriculation varchar(254) not null  comment '',
   numero__roue         int not null  comment '',
   pression             int  comment '',
   diametre             int  comment '',
   primary key (numero_Immatriculation, numero__roue)
);

/*==============================================================*/
/* Table: Siege                                                 */
/*==============================================================*/
create table Siege
(
   numero_Immatriculation varchar(254) not null  comment '',
   numero_siege         int not null  comment '',
   couleur              varchar(254)  comment '',
   primary key (numero_Immatriculation, numero_siege)
);

/*==============================================================*/
/* Table: Vitre                                                 */
/*==============================================================*/
create table Vitre
(
   numero_Immatriculation varchar(254) not null  comment '',
   numero_vitre         int not null  comment '',
   epaisseur            int  comment '',
   poids                int  comment '',
   primary key (numero_Immatriculation, numero_vitre)
);

alter table Carrosserie add constraint FK_CARROSSE_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

alter table Conducteur add constraint FK_CONDUCTE_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

alter table Enfant add constraint FK_ENFANT_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

alter table Roue add constraint FK_ROUE_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

alter table Siege add constraint FK_SIEGE_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

alter table Vitre add constraint FK_VITRE_ASSOCIATI_BUS foreign key (numero_Immatriculation)
      references Bus (numero_Immatriculation) on delete restrict on update restrict;

