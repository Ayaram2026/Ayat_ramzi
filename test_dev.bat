@echo off
chcp 65001 >nul
title Test AADL GEST IMMO (Mode Developpement)

echo ==========================================
echo  TEST EN MODE DEVELOPPEMENT
echo ==========================================
echo.

if not exist "venv" (
    echo Creation de l'environnement virtuel...
    python -m venv venv
)

echo Activation de l'environnement...
call venv\Scripts\activate.bat

echo Installation des dependances...
pip install pywebview --quiet

echo.
echo Lancement de l'application...
echo.

python src/main_final.py

if errorlevel 1 (
    echo.
    echo [ERREUR] L'application a rencontre une erreur
    pause
)
