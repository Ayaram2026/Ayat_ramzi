#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script de préparation pour l'injection du HTML dans main.py
"""

import os
import re

def escape_for_python_string(content):
    """Échapper le contenu pour l'insérer dans une chaîne Python"""
    # Remplacer les triples quotes
    content = content.replace('\'\'\'', '\'\'\'')
    # Échapper les backslashes
    content = content.replace('\\', '\\\\')
    # Échapper les guillemets doubles
    content = content.replace('"', '\\"')
    return content

def main():
    base_dir = os.path.dirname(os.path.abspath(__file__))

    # Lire le fichier HTML original
    html_path = os.path.join(base_dir, 'app.html')
    if not os.path.exists(html_path):
        # Chercher dans le répertoire parent
        html_path = os.path.join(base_dir, '..', 'app.html')

    if not os.path.exists(html_path):
        print("[ERREUR] Fichier app.html non trouvé")
        return 1

    with open(html_path, 'r', encoding='utf-8') as f:
        html_content = f.read()

    print(f"[INFO] HTML lu: {len(html_content)} caracteres")

    # Lire le template main.py
    template_path = os.path.join(base_dir, 'src', 'main.py')
    with open(template_path, 'r', encoding='utf-8') as f:
        template = f.read()

    # Échapper le HTML
    escaped_html = escape_for_python_string(html_content)

    # Injecter dans le template
    final_content = template.replace('{{HTML_CONTENT}}', escaped_html)

    # Sauvegarder
    output_path = os.path.join(base_dir, 'src', 'main_prepared.py')
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(final_content)

    print(f"[INFO] Fichier prepare: {output_path}")
    return 0

if __name__ == '__main__':
    exit(main())
