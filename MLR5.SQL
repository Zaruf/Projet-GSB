/*
 ----------------------------------------------------------------------------
             Génération d'une base de données pour
                      Microsoft SQL Server
                       (29/11/2019 15:06:11)
 ----------------------------------------------------------------------------
     Nom de la base : MLR5
     Projet : Espace de travail
     Auteur : LMC
     Date de dernière modification : 29/11/2019 15:06:06
 ----------------------------------------------------------------------------
*/

drop database MLR5
go

/* -----------------------------------------------------------------------------
      OUVERTURE DE LA BASE MLR5
----------------------------------------------------------------------------- */

create database MLR5
go

use MLR5
go



/* -----------------------------------------------------------------------------
      TABLE : ASSOCIATION
----------------------------------------------------------------------------- */

create table ASSOCIATION
(
     ASSOCIATION_ID int not null,
     PAYS_ID int not null,
     ID smallint not null,
     NOM varchar(20) ,
     MISSION varchar(40) 
)
go



/*      INDEX DE ASSOCIATION      */


sp_primarykey ASSOCIATION, ASSOCIATION_ID
go



/* -----------------------------------------------------------------------------
      TABLE : PERSONNE
----------------------------------------------------------------------------- */

create table PERSONNE
(
     ID smallint not null,
     NOM varchar(20) ,
     PRENOM char(32) ,
     ADRESSE char(50) ,
     CODEPOSTAL int ,
     TEL int ,
     VILLE char(32) 
)
go


sp_primarykey PERSONNE, ID
go



/* -----------------------------------------------------------------------------
      TABLE : CONTROLE
----------------------------------------------------------------------------- */

create table CONTROLE
(
     CONTROLE_ID int not null,
     DATE char(32) ,
     RESULTAT char(32) ,
     BUDGETPREVISIONNELLE char(32) ,
     BUDGETREEL char(32) 
)
go


sp_primarykey CONTROLE, CONTROLE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : PAYS
----------------------------------------------------------------------------- */

create table PAYS
(
     PAYS_ID int not null,
     NOM varchar(20) 
)
go


sp_primarykey PAYS, PAYS_ID
go



/* -----------------------------------------------------------------------------
      TABLE : EMPLOYECOMMUNICATION
----------------------------------------------------------------------------- */

create table EMPLOYECOMMUNICATION
(
     ID smallint not null,
     NOM varchar(20) ,
     PRENOM char(32) ,
     ADRESSE char(50) ,
     CODEPOSTAL int ,
     TEL int ,
     VILLE char(32) 
)
go


sp_primarykey EMPLOYECOMMUNICATION, ID
go



/* -----------------------------------------------------------------------------
      TABLE : ACTION
----------------------------------------------------------------------------- */

create table ACTION
(
     ACTION_ID int not null,
     DESCRIPTIF varchar(128) 
)
go


sp_primarykey ACTION, ACTION_ID
go



/* -----------------------------------------------------------------------------
      TABLE : COURANT
----------------------------------------------------------------------------- */

create table COURANT
(
     COURANT_ID int not null,
     NOM varchar(20) ,
     DESCRIPTIF varchar(300) 
)
go


sp_primarykey COURANT, COURANT_ID
go



/* -----------------------------------------------------------------------------
      TABLE : ARTISTE
----------------------------------------------------------------------------- */

create table ARTISTE
(
     ID smallint not null,
     COURANT_ID int not null,
     SITEWEB varchar(25) ,
     NOM varchar(20) ,
     PRENOM char(32) ,
     ADRESSE char(50) ,
     CODEPOSTAL int ,
     TEL int ,
     VILLE char(32) 
)
go



/*      INDEX DE ARTISTE      */


sp_primarykey ARTISTE, ID
go



/* -----------------------------------------------------------------------------
      TABLE : DATE
----------------------------------------------------------------------------- */

create table DATE
(
     ANNEE datetime not null
)
go


sp_primarykey DATE, ANNEE
go



/* -----------------------------------------------------------------------------
      TABLE : PUBLIC
----------------------------------------------------------------------------- */

create table PUBLIC
(
     PUBLIC_ID int not null,
     LIBELLE char(32) 
)
go


sp_primarykey PUBLIC, PUBLIC_ID
go



/* -----------------------------------------------------------------------------
      TABLE : ETAGE
----------------------------------------------------------------------------- */

create table ETAGE
(
     CODE varchar(2) not null,
     NUM int not null
)
go



/*      INDEX DE ETAGE      */


sp_primarykey ETAGE, CODE, NUM
go



/* -----------------------------------------------------------------------------
      TABLE : EVENEMENT
----------------------------------------------------------------------------- */

create table EVENEMENT
(
     EVENEMENT_ID int not null,
     CAMAPGNE_ID int not null,
     DATEDEBUT datetime ,
     DATEFIN datetime ,
     THEME varchar(30) ,
     VILLE char(32) 
)
go



/*      INDEX DE EVENEMENT      */


sp_primarykey EVENEMENT, EVENEMENT_ID
go



/* -----------------------------------------------------------------------------
      TABLE : RESPONSABLEASSOC
----------------------------------------------------------------------------- */

create table RESPONSABLEASSOC
(
     ID smallint not null,
     NOM varchar(20) ,
     PRENOM char(32) ,
     ADRESSE char(50) ,
     CODEPOSTAL int ,
     TEL int ,
     VILLE char(32) 
)
go


sp_primarykey RESPONSABLEASSOC, ID
go



/* -----------------------------------------------------------------------------
      TABLE : ENTREPRISE
----------------------------------------------------------------------------- */

create table ENTREPRISE
(
     ENTREPRISE_ID int not null,
     NOM varchar(20) ,
     ADRESSE varchar(30) ,
     CODEPOSTAL char(5) ,
     VILLE varchar(20) ,
     MAIL varchar(35) 
)
go


sp_primarykey ENTREPRISE, ENTREPRISE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : CATEGORIEPRODUIT
----------------------------------------------------------------------------- */

create table CATEGORIEPRODUIT
(
     CATPRODUIT_ID int not null,
     NOM varchar(15) 
)
go


sp_primarykey CATEGORIEPRODUIT, CATPRODUIT_ID
go



/* -----------------------------------------------------------------------------
      TABLE : BATIMENT
----------------------------------------------------------------------------- */

create table BATIMENT
(
     CODE varchar(2) not null
)
go


sp_primarykey BATIMENT, CODE
go



/* -----------------------------------------------------------------------------
      TABLE : CATEGORIE
----------------------------------------------------------------------------- */

create table CATEGORIE
(
     CATEGORIE_CODE varchar(5) not null,
     NOM varchar(25) 
)
go


sp_primarykey CATEGORIE, CATEGORIE_CODE
go



/* -----------------------------------------------------------------------------
      TABLE : VIP
----------------------------------------------------------------------------- */

create table VIP
(
     ID smallint not null,
     CATEGORIE_CODE varchar(5) not null,
     NOM varchar(20) ,
     PRENOM char(32) ,
     ADRESSE char(50) ,
     CODEPOSTAL int ,
     TEL int ,
     VILLE char(32) 
)
go



/*      INDEX DE VIP      */


sp_primarykey VIP, ID
go



/* -----------------------------------------------------------------------------
      TABLE : CAMPAGNE
----------------------------------------------------------------------------- */

create table CAMPAGNE
(
     CAMAPGNE_ID int not null,
     PUBLIC_ID int not null,
     ID smallint not null,
     INTITULE varchar(20) ,
     OBJECTIF varchar(50) ,
     PUBLICTOUCHE varchar(50) ,
     DATEDEBUT datetime ,
     DATEFIN datetime 
)
go



/*      INDEX DE CAMPAGNE      */


sp_primarykey CAMPAGNE, CAMAPGNE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : AGENCE
----------------------------------------------------------------------------- */

create table AGENCE
(
     AGENCE_ID int not null,
     NOM varchar(20) ,
     ADRESSE varchar(25) ,
     CODEPOSTAL int ,
     VILLE varchar(25) ,
     TEL varchar(10) ,
     EMAIL varchar(35) ,
     SITEWEB varchar(35) ,
     TYPE varchar(25) 
)
go


sp_primarykey AGENCE, AGENCE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : PARTENARIAT
----------------------------------------------------------------------------- */

create table PARTENARIAT
(
     PARTENARIAT_ID int not null,
     ASSOCIATION_ID int not null,
     ACTION_ID int not null,
     DATE datetime ,
     BUDGETREEL int ,
     BUDGEPREVISIONNEL int 
)
go



/*      INDEX DE PARTENARIAT      */


sp_primarykey PARTENARIAT, PARTENARIAT_ID
go



/* -----------------------------------------------------------------------------
      TABLE : TYPEDECONTROLE
----------------------------------------------------------------------------- */

create table TYPEDECONTROLE
(
     TYPECONTROLE_ID int not null,
     NOM varchar(20) 
)
go


sp_primarykey TYPEDECONTROLE, TYPECONTROLE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : ZONESTOCKAGE
----------------------------------------------------------------------------- */

create table ZONESTOCKAGE
(
     CODE varchar(2) not null,
     NUM int not null,
     ZONESTOCK_ID int not null,
     CATPRODUIT_ID int not null,
     NOM varchar(20) ,
     ADRESSE varchar(30) ,
     CODEPOSTALE int ,
     VILLE varchar(20) 
)
go



/*      INDEX DE ZONESTOCKAGE      */


sp_primarykey ZONESTOCKAGE, CODE, NUM, ZONESTOCK_ID
go



/* -----------------------------------------------------------------------------
      TABLE : PARTICIPER
----------------------------------------------------------------------------- */

create table PARTICIPER
(
     EVENEMENT_ID int not null,
     ID smallint not null,
     CACHET char(32) 
)
go



/*      INDEX DE PARTICIPER      */


sp_primarykey PARTICIPER, EVENEMENT_ID, ID
go



/* -----------------------------------------------------------------------------
      TABLE : CONTROLER
----------------------------------------------------------------------------- */

create table CONTROLER
(
     CODE varchar(2) not null,
     NUM int not null,
     ZONESTOCK_ID int not null,
     CONTROLE_ID int not null
)
go



/*      INDEX DE CONTROLER      */


sp_primarykey CONTROLER, CODE, NUM, ZONESTOCK_ID, CONTROLE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : GERER
----------------------------------------------------------------------------- */

create table GERER
(
     CONTROLE_ID int not null,
     ENTREPRISE_ID int not null
)
go



/*      INDEX DE GERER      */


sp_primarykey GERER, CONTROLE_ID, ENTREPRISE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : CHOISIR
----------------------------------------------------------------------------- */

create table CHOISIR
(
     PAYS_ID int not null,
     ANNEE datetime not null,
     ACTION_ID int not null
)
go



/*      INDEX DE CHOISIR      */


sp_primarykey CHOISIR, PAYS_ID, ANNEE, ACTION_ID
go



/* -----------------------------------------------------------------------------
      TABLE : CONTENIR
----------------------------------------------------------------------------- */

create table CONTENIR
(
     CATEGORIE_CODE varchar(5) not null,
     EVENEMENT_ID int not null,
     DATE char(32) ,
     MESSAGE varchar(200) 
)
go



/*      INDEX DE CONTENIR      */


sp_primarykey CONTENIR, CATEGORIE_CODE, EVENEMENT_ID
go



/* -----------------------------------------------------------------------------
      TABLE : EST_DE_TYPE
----------------------------------------------------------------------------- */

create table EST_DE_TYPE
(
     CONTROLE_ID int not null,
     TYPECONTROLE_ID int not null
)
go



/*      INDEX DE EST_DE_TYPE      */


sp_primarykey EST_DE_TYPE, CONTROLE_ID, TYPECONTROLE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : ETRE_EN_RELATION
----------------------------------------------------------------------------- */

create table ETRE_EN_RELATION
(
     AGENCE_ID int not null,
     CAMAPGNE_ID int not null
)
go



/*      INDEX DE ETRE_EN_RELATION      */


sp_primarykey ETRE_EN_RELATION, AGENCE_ID, CAMAPGNE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : A_BESOIN
----------------------------------------------------------------------------- */

create table A_BESOIN
(
     CODE varchar(2) not null,
     NUM int not null,
     ZONESTOCK_ID int not null,
     TYPECONTROLE_ID int not null,
     TEXTE varchar(128) 
)
go



/*      INDEX DE A_BESOIN      */


sp_primarykey A_BESOIN, CODE, NUM, ZONESTOCK_ID, TYPECONTROLE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : SPÉCIALISER
----------------------------------------------------------------------------- */

create table SPÉCIALISER
(
     TYPECONTROLE_ID int not null,
     ENTREPRISE_ID int not null
)
go



/*      INDEX DE SPÉCIALISER      */


sp_primarykey SPÉCIALISER, TYPECONTROLE_ID, ENTREPRISE_ID
go



/* -----------------------------------------------------------------------------
      TABLE : CONVIER
----------------------------------------------------------------------------- */

create table CONVIER
(
     ID smallint not null,
     EVENEMENT_ID int not null
)
go



/*      INDEX DE CONVIER      */


sp_primarykey CONVIER, ID, EVENEMENT_ID
go



/* -----------------------------------------------------------------------------
      REFRENCES SUR LES TABLES
----------------------------------------------------------------------------- */


sp_foreignkey ASSOCIATION, PAYS, PAYS_ID
go


sp_foreignkey ASSOCIATION, RESPONSABLEASSOC, ID
go


sp_foreignkey EMPLOYECOMMUNICATION, PERSONNE, ID
go


sp_foreignkey ARTISTE, COURANT, COURANT_ID
go


sp_foreignkey ARTISTE, PERSONNE, ID
go


sp_foreignkey ETAGE, BATIMENT, CODE
go


sp_foreignkey EVENEMENT, CAMPAGNE, CAMAPGNE_ID
go


sp_foreignkey RESPONSABLEASSOC, PERSONNE, ID
go


sp_foreignkey VIP, CATEGORIE, CATEGORIE_CODE
go


sp_foreignkey VIP, PERSONNE, ID
go


sp_foreignkey CAMPAGNE, PUBLIC, PUBLIC_ID
go


sp_foreignkey CAMPAGNE, EMPLOYECOMMUNICATION, ID
go


sp_foreignkey PARTENARIAT, ASSOCIATION, ASSOCIATION_ID
go


sp_foreignkey PARTENARIAT, ACTION, ACTION_ID
go


sp_foreignkey ZONESTOCKAGE, ETAGE, CODE, NUM
go


sp_foreignkey ZONESTOCKAGE, CATEGORIEPRODUIT, CATPRODUIT_ID
go


sp_foreignkey PARTICIPER, EVENEMENT, EVENEMENT_ID
go


sp_foreignkey PARTICIPER, ARTISTE, ID
go


sp_foreignkey CONTROLER, ZONESTOCKAGE, CODE, NUM, ZONESTOCK_ID
go


sp_foreignkey CONTROLER, CONTROLE, CONTROLE_ID
go


sp_foreignkey GERER, CONTROLE, CONTROLE_ID
go


sp_foreignkey GERER, ENTREPRISE, ENTREPRISE_ID
go


sp_foreignkey CHOISIR, PAYS, PAYS_ID
go


sp_foreignkey CHOISIR, DATE, ANNEE
go


sp_foreignkey CHOISIR, ACTION, ACTION_ID
go


sp_foreignkey CONTENIR, CATEGORIE, CATEGORIE_CODE
go


sp_foreignkey CONTENIR, EVENEMENT, EVENEMENT_ID
go


sp_foreignkey EST_DE_TYPE, CONTROLE, CONTROLE_ID
go


sp_foreignkey EST_DE_TYPE, TYPEDECONTROLE, TYPECONTROLE_ID
go


sp_foreignkey ETRE_EN_RELATION, AGENCE, AGENCE_ID
go


sp_foreignkey ETRE_EN_RELATION, CAMPAGNE, CAMAPGNE_ID
go


sp_foreignkey A_BESOIN, ZONESTOCKAGE, CODE, NUM, ZONESTOCK_ID
go


sp_foreignkey A_BESOIN, TYPEDECONTROLE, TYPECONTROLE_ID
go


sp_foreignkey SPÉCIALISER, TYPEDECONTROLE, TYPECONTROLE_ID
go


sp_foreignkey SPÉCIALISER, ENTREPRISE, ENTREPRISE_ID
go


sp_foreignkey CONVIER, VIP, ID
go


sp_foreignkey CONVIER, EVENEMENT, EVENEMENT_ID
go



/*
 -----------------------------------------------------------------------------
               FIN DE GENERATION
 -----------------------------------------------------------------------------
*/