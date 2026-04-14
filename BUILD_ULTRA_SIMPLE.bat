@echo off
chcp 65001 >nul
title Build Ultra-Simple AADL GEST IMMO
cls

echo ╔════════════════════════════════════════════════════════════════╗
echo ║  BUILD ULTRA-SIMPLE - AADL GEST IMMO                           ║
echo ║  (Sans environnement virtuel)                                  ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

echo [1/4] Installation de PyInstaller et webview...
pip install pywebview pyinstaller --user
if errorlevel 1 (
    echo [ERREUR] Installation echouee. Verifiez votre connexion internet.
    pause
    exit /b 1
)

echo [2/4] Nettoyage anciens builds...
if exist "dist" rmdir /s /q dist
if exist "build" rmdir /s /q build

echo [3/4] Compilation... (cela peut prendre 2-5 minutes)
pyinstaller --onefile --noconsole --windowed --icon=assets/icon.ico --name "AADL_Gest_Immo_Elevator" src/main_final.py

if errorlevel 1 (
    echo.
    echo [ERREUR] La compilation a echoue.
    echo.
    echo Essayez cette commande manuellement pour voir l'erreur:
    echo pyinstaller --onefile --windowed src/main_final.py
    echo.
    pause
    exit /b 1
)

echo [4/4] Verification...
if exist "dist\AADL_Gest_Immo_Elevator.exe" (
    echo.
    echo ╔════════════════════════════════════════════════════════════════╗
    echo ║  ✅ SUCCES ! L'executable est cree !                          ║
    echo ╚════════════════════════════════════════════════════════════════╝
    echo.
    echo Emplacement: dist\AADL_Gest_Immo_Elevator.exe
    echo.
    echo Vous pouvez maintenant:
    echo  1. Copier ce fichier sur une cle USB
    echo  2. L'envoyer par email
    echo  3. Le distribuer aux utilisateurs
    echo.
    echo Taille du fichier:
    dir "dist\AADL_Gest_Immo_Elevator.exe" | findstr "AADL"
    echo.
) else (
    echo [ERREUR] L'executable n'a pas ete trouve dans dist\
)

pause
