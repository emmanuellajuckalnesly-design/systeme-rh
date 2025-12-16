-- Créer la base de données
CREATE DATABASE IF NOT EXISTS systeme_rh;
USE systeme_rh;

-- Table des utilisateurs (Admin et Employés)
CREATE TABLE utilisateurs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL,
  role ENUM('admin', 'employee') DEFAULT 'employee',
  date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des employés
CREATE TABLE employes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  utilisateur_id INT NOT NULL,
  poste VARCHAR(100) NOT NULL,
  departement VARCHAR(100) NOT NULL,
  salaire DECIMAL(10, 2),
  date_embauche DATE NOT NULL,
  telephone VARCHAR(20),
  adresse TEXT,
  date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id)
);

-- Table des congés
CREATE TABLE conges (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employe_id INT NOT NULL,
  date_debut DATE NOT NULL,
  date_fin DATE NOT NULL,
  type_conge ENUM('congé_payé', 'congé_maladie', 'congé_sans_solde') DEFAULT 'congé_payé',
  raison TEXT,
  statut ENUM('en_attente', 'approuvé', 'rejeté') DEFAULT 'en_attente',
  date_demande TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (employe_id) REFERENCES employes(id)
);

-- Table des salaires
CREATE TABLE salaires (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employe_id INT NOT NULL,
  mois INT NOT NULL,
  annee INT NOT NULL,
  salaire_brut DECIMAL(10, 2) NOT NULL,
  retenues DECIMAL(10, 2) DEFAULT 0,
  salaire_net DECIMAL(10, 2) NOT NULL,
  date_paiement DATE,
  statut ENUM('en_attente', 'payé') DEFAULT 'en_attente',
  FOREIGN KEY (employe_id) REFERENCES employes(id)
);

-- Table des documents
CREATE TABLE documents (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employe_id INT NOT NULL,
  type_document VARCHAR(100) NOT NULL,
  nom_fichier VARCHAR(255) NOT NULL,
  date_upload TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (employe_id) REFERENCES employes(id)
);

-- Insérer des données de test
INSERT INTO utilisateurs (email, password, nom, prenom, role) VALUES
('admin@rh.com', 'admin123', 'Admin', 'RH', 'admin'),
('jean.dupont@company.com', 'pass123', 'Dupont', 'Jean', 'employee'),
('marie.martin@company.com', 'pass123', 'Martin', 'Marie', 'employee');

INSERT INTO employes (utilisateur_id, poste, departement, salaire, date_embauche, telephone, adresse) VALUES
(2, 'Développeur', 'IT', 2500.00, '2023-01-15', '0612345678', '123 Rue de Paris'),
(3, 'Designer', 'IT', 2000.00, '2023-06-01', '0623456789', '456 Avenue de Lyon');


