@echo off
chcp 65001 >nul
title Build AADL GEST IMMO - Gestion des Ascenseurs
cls

echo ╔════════════════════════════════════════════════════════════════╗
echo ║     AADL GEST IMMO - Gestion des Ascenseurs                  ║
echo ║     Build Executable Windows 64 bits                          ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

REM Vérifier Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERREUR] Python n'est pas installe ou n'est pas dans le PATH
    echo.
    echo Veuillez installer Python 3.8+ depuis https://python.org
    pause
    exit /b 1
)

echo [OK] Python detecte
echo.

REM Créer l'environnement virtuel si nécessaire
if not exist "venv" (
    echo [1/6] Creation de l'environnement virtuel...
    python -m venv venv
    if errorlevel 1 (
        echo [ERREUR] Impossible de creer l'environnement virtuel
        pause
        exit /b 1
    )
)

echo [2/6] Activation de l'environnement virtuel...
call venv\Scripts\activate.bat

echo [3/6] Installation des dependances...
pip install --upgrade pip --quiet
pip install pywebview pyinstaller --quiet
if errorlevel 1 (
    echo [ERREUR] Impossible d'installer les dependances
    pause
    exit /b 1
)

echo [4/6] Preparation des fichiers...
if not exist "dist" mkdir dist
if not exist "build" mkdir build

echo [5/6] Compilation avec PyInstaller...
pyinstaller --clean --noconfirm AADL_Gest_Immo_Elevator.spec
if errorlevel 1 (
    echo [ERREUR] Echec de la compilation
    pause
    exit /b 1
)

echo [6/6] Finalisation...

REM Copier les fichiers additionnels si nécessaire
if exist "README.md" copy /Y "README.md" "dist\README.md" >nul

echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║                    BUILD TERMINE AVEC SUCCES !                  ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo Executable: dist\AADL_Gest_Immo_Elevator.exe
echo.
echo Pour distribuer l'application:
echo   1. Copiez le fichier AADL_Gest_Immo_Elevator.exe
echo   2. Distribuez aux utilisateurs
echo   3. Aucune installation requise !
echo.
pause
