# 🏢 AADL GEST IMMO - Gestion des Ascenseurs
## Application Desktop Windows - Package de Build

![Logo AADL](assets/icon.png)

---

## 🚀 COMMENT OBTENIR L'EXÉCUTABLE (3 méthodes)

### ✅ MÉTHODE 1: GitHub Actions (LE PLUS SIMPLE - Recommandé)
**Aucun logiciel à installer sur votre PC !**

1. **Créez un compte GitHub** (gratuit): https://github.com/signup
2. **Créez un repository** (bouton vert "New")
3. **Uploadez ces fichiers** (glisser-déposer)
4. **Cliquez sur l'onglet Actions**
5. **Cliquez sur "Run workflow"**
6. **Attendez 5 minutes**
7. **Téléchargez l'exécutable** dans Artifacts

📖 **Guide détaillé**: Voir `GITHUB_ACTIONS_GUIDE.md`

---

### ✅ MÉTHODE 2: Build Local (Sur PC Windows)
**Si vous avez Python d'installé**

**Option A - Ultra simple** (double-clic):
```
Double-cliquez sur: BUILD_ULTRA_SIMPLE.bat
```

**Option B - Automatique** (avec environnement virtuel):
```
Double-cliquez sur: build.bat
```

**Option C - Manuel** (ligne de commande):
```bash
pip install pywebview pyinstaller
pyinstaller --onefile --windowed --icon=assets/icon.ico src/main_final.py
```

L'exécutable sera dans `dist/AADL_Gest_Immo_Elevator.exe`

---

### ✅ MÉTHODE 3: auto-py-to-exe (Interface graphique)
**Pour ceux qui préfèrent les interfaces**

```bash
pip install auto-py-to-exe
auto-py-to-exe
```

Puis configurez:
- Script: `src/main_final.py`
- One File: ✅
- Window Based: ✅
- Icon: `assets/icon.ico`

📖 **Guide**: Voir `METHODES_ALTERNATIVES.md`

---

## 📦 Structure du Package

```
AADL_Gest_Immo_Elevator/
│
├── 📄 FICHIERS DE BUILD
│   ├── build.bat                    ← Build automatique (recommandé)
│   ├── BUILD_ULTRA_SIMPLE.bat       ← Build sans environnement virtuel
│   └── test_dev.bat                 ← Test sans compiler
│
├── 📁 .github/workflows/
│   ├── build-windows.yml            ← Workflow GitHub Actions (complet)
│   ├── build-simple.yml             ← Workflow marketplace
│   └── build-wine.yml               ← Cross-platform
│
├── 📄 DOCUMENTATION
│   ├── README.md                    ← Ce fichier
│   ├── GITHUB_ACTIONS_GUIDE.md     ← Guide GitHub détaillé
│   ├── METHODES_ALTERNATIVES.md     ← Autres méthodes de build
│   └── GUIDE_BUILD_RAPIDE.txt       ← Référence rapide
│
├── 📁 src/
│   ├── main.py                      ← Template Python
│   └── main_final.py                ← Version avec HTML injecté
│
├── 📁 assets/
│   ├── icon.ico                     ← Icône Windows
│   └── version.txt                  ← Informations version
│
├── 📄 CONFIGURATION
│   ├── AADL_Gest_Immo_Elevator.spec ← Config PyInstaller
│   ├── requirements.txt             ← Dépendances Python
│   ├── installer.iss                ← Script Inno Setup
│   └── LICENSE.txt                  ← Licence
│
└── 📄 app.html                      ← Application originale
```

---

## ⚡ Démarrage Rapide

### Je veux compiler MAINTENANT:

| Si vous avez... | Utilisez... | Commande/Fichier |
|-----------------|-------------|------------------|
| Rien (juste internet) | GitHub Actions | `GITHUB_ACTIONS_GUIDE.md` |
| Python installé | Build simple | `BUILD_ULTRA_SIMPLE.bat` |
| Python + patience | Build complet | `build.bat` |
| Interface graphique | auto-py-to-exe | `METHODES_ALTERNATIVES.md` |

---

## 🎯 Après le Build

L'exécutable `AADL_Gest_Immo_Elevator.exe` sera créé dans le dossier `dist/`.

**Caractéristiques:**
- ✅ Portable (aucune installation requise)
- ✅ Taille: ~15-25 MB
- ✅ Compatible Windows 10/11 64 bits
- ✅ Mot de passe: `Gestimmo@2026`

---

## 🆘 Aide et Dépannage

### "Je n'arrive pas à compiler"
→ Utilisez **GitHub Actions** (Méthode 1), c'est le plus fiable

### "J'ai une erreur avec PyInstaller"
→ Essayez `BUILD_ULTRA_SIMPLE.bat` (pas d'environnement virtuel)

### "Je veux une interface graphique"
→ Voir `METHODES_ALTERNATIVES.md` → Méthode auto-py-to-exe

### "Rien ne marche"
→ Uploadez sur GitHub et utilisez Actions, ou demandez à un collègue

---

## 📞 Support

**SPA AADL GEST IMMO ANNABA**
- Direction Régionale: ANNABA
- Programmes: 55 000 et 568 000 Logements

**Documentation technique:**
- PyInstaller: https://pyinstaller.org
- pywebview: https://pywebview.flowrl.com
- GitHub Actions: https://github.com/features/actions

---

## 📝 Licence

Copyright © 2026 SPA AADL GEST IMMO ANNABA. Tous droits réservés.

**Version**: 1.0.0 | **Date**: 2026-04-14
