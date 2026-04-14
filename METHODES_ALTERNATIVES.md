
# 🔄 MÉTHODES ALTERNATIVES pour créer l'exécutable

## Méthode 1: auto-py-to-exe (Interface graphique)

Si les lignes de commande vous posent problème, utilisez cet outil avec interface graphique :

### Installation
```bash
pip install auto-py-to-exe
```

### Utilisation
```bash
auto-py-to-exe
```

### Configuration dans l'interface
1. **Script Location**: Sélectionnez `src/main_final.py`
2. **Onefile**: Cochez "One File"
3. **Window Based**: Cochez "Window Based" (pas de console)
4. **Icon**: Sélectionnez `assets/icon.ico`
5. **Additional Files**: Ajoutez le dossier `assets/`
6. **Advanced** → **--name**: `AADL_Gest_Immo_Elevator`
7. Cliquez sur **CONVERT .PY TO .EXE**

L'exécutable sera dans `output/`

---

## Méthode 2: cx_Freeze (Alternative à PyInstaller)

```bash
pip install cx_Freeze
```

Créez un fichier `setup.py`:
```python
from cx_Freeze import setup, Executable

setup(
    name="AADL_Gest_Immo_Elevator",
    version="1.0",
    description="Gestion des Ascenseurs AADL",
    executables=[Executable("src/main_final.py", base="Win32GUI", icon="assets/icon.ico")]
)
```

Puis:
```bash
python setup.py build
```

---

## Méthode 3: Nuitka (Compilateur Python → C → EXE)

Plus rapide mais plus complexe:

```bash
pip install nuitka
python -m nuitka --standalone --onefile --windows-icon-from-ico=assets/icon.ico --disable-console src/main_final.py
```

---

## Méthode 4: Online Compilers (Sans installation)

Si vous n'avez VRAIMENT rien qui marche :

### Option A: Repl.it
1. Allez sur https://replit.com
2. Créez un compte
3. Importez votre code
4. Utilisez le template Python
5. Dans le shell: `pip install pyinstaller && pyinstaller src/main_final.py`
6. Téléchargez le fichier depuis le panneau fichiers

### Option B: GitHub Codespaces
1. Allez sur GitHub
2. Créez un codespace depuis votre repository
3. Terminal intégré avec Python préinstallé
4. Exécutez les commandes de build

---

## 🆘 Dernière solution: Demander de l'aide

Si VRAIMENT rien ne marche :
1. Uploadez votre code sur GitHub
2. Demandez à un collègue/amis avec un PC Windows de compiler
3. Ou utilisez un service en ligne comme Fiverr/Upwork (5-10€)
4. Ou contactez le support informatique de AADL
