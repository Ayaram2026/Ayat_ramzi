# 🚀 GitHub Actions - Compilation Automatique

## 📋 Méthode ULTRA SIMPLE (Recommandée pour débutants)

### Étape 1: Créer un compte GitHub
→ Allez sur https://github.com/signup (gratuit)

### Étape 2: Créer un nouveau repository
1. Cliquez sur le **+** en haut à droite → **New repository**
2. Nommez-le: `aadl-gest-immo` (ou autre)
3. Cochez **Private** (privé) si vous voulez
4. Cliquez **Create repository**

### Étape 3: Uploader les fichiers
**Option A - Par glisser-déposer (simple):**
1. Ouvrez votre repository sur GitHub
2. Cliquez sur **"uploading an existing file"**
3. Glissez-déposez TOUS les fichiers du dossier `AADL_Gest_Immo_Elevator`
4. Cliquez **Commit changes**

**Option B - Ligne de commande (avancé):**
```bash
cd AADL_Gest_Immo_Elevator
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/VOTRE_USERNAME/aadl-gest-immo.git
git push -u origin main
```

### Étape 4: Lancer la compilation
1. Allez dans l'onglet **Actions** de votre repository
2. Cliquez sur le workflow **"Build Windows Executable"**
3. Cliquez sur le bouton **"Run workflow"** (à droite)
4. Sélectionnez la branche **main**
5. Cliquez **Run workflow**

### Étape 5: Télécharger l'exécutable
1. Attendez 3-5 minutes (rafraîchissez la page)
2. Cliquez sur la dernière exécution (run)
3. En bas, dans **Artifacts**, cliquez sur **AADL_Gest_Immo_Elevator-Windows**
4. Le fichier ZIP se télécharge avec l'exécutable !

---

## 🎯 Méthode AUTOMATIQUE (Push = Build)

Si vous configurez le workflow sur `push`, dès que vous modifiez un fichier et l'upload :
1. Le build se lance AUTOMATIQUEMENT
2. Vous recevez un email quand c'est prêt
3. L'exécutable est disponible dans les Artifacts

---

## 📁 Structure GitHub requise

```
aadl-gest-immo/ (votre repository)
├── .github/
│   └── workflows/
│       └── build-windows.yml    ← Workflow de compilation
├── src/
│   └── main_final.py            ← Code source Python
├── assets/
│   └── icon.ico                 ← Icône de l'application
├── AADL_Gest_Immo_Elevator.spec ← Configuration PyInstaller
├── requirements.txt             ← Dépendances Python
└── README.md                    ← Documentation
```

---

## ⚠️ Résolution des problèmes

### "Workflow not found"
→ Vérifiez que le fichier est bien dans `.github/workflows/` (avec le point)

### "Build failed"
→ Cliquez sur le run rouge → Regardez les logs pour l'erreur
→ Vérifiez que tous les fichiers sont uploadés

### "Artifact not found"
→ Attendez que le build soit terminé (vert)
→ Rafraîchissez la page

### Besoin d'aide ?
→ Ouvrez une "Issue" sur GitHub
→ Ou consultez: https://docs.github.com/en/actions

---

## 🎁 Bonus: Release Automatique

Si vous créez un tag (version), l'exécutable se publie AUTOMATIQUEMENT dans les Releases :

```bash
git tag v1.0.0
git push origin v1.0.0
```

→ L'exécutable apparaîtra dans l'onglet **Releases** de GitHub
