# 🏢 Système de Gestion RH

Plateforme complète de gestion des ressources humaines avec DevOps.

## 📋 Fonctionnalités

### Pour les Employés
- 👤 Consulter mon profil
- 📄 Télécharger mes documents
- 🏖️ Demander des congés
- 💬 Contacter RH

### Pour l'Admin/RH
- 👥 Gérer les employés
- 💰 Gestion des salaires
- 📊 Dashboard avec statistiques
- ✅ Valider les congés
- 📈 Générer des rapports

## 🛠️ Stack Technique

- **Frontend** : HTML5, CSS3, JavaScript vanilla
- **Backend** : Node.js + Express
- **Database** : MySQL (XAMPP)
- **DevOps** : Docker, GitHub Actions
- **Déploiement** : Railway

## 📁 Structure du Projet
```
systeme-rh/
├── backend/              # API REST
│   ├── src/
│   │   ├── routes/
│   │   ├── controllers/
│   │   └── models/
│   ├── package.json
│   └── server.js
│
├── frontend/             # Interface Web
│   ├── admin/            # Tableau de bord admin
│   ├── employee/         # Espace employé
│   ├── css/
│   ├── js/
│   └── index.html
│
├── database/             # Scripts SQL
│   └── schema.sql
│
└── docker/               # Configuration Docker
    ├── Dockerfile
    └── docker-compose.yml
```

## 🚀 Démarrage Rapide

### Backend
```bash
cd backend
npm install
npm start
```

### Frontend
Ouvrir `frontend/index.html` dans le navigateur

### Base de données
Importer `database/schema.sql` dans MySQL (XAMPP)

## 📚 Documentation

- [Backend API Documentation](./backend/README.md)
- [Frontend Documentation](./frontend/README.md)
- [Database Schema](./database/README.md)

## 👨‍💻 Auteur

Créé avec ❤️ pour apprendre le DevOps

## 📄 Licence

MIT
```