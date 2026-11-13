# 🚀 Guide d'utilisation de votre configuration Neovim

Bienvenue dans votre configuration Neovim moderne, rapide et taillée pour le développement.
La touche principale (**Leader Key**) est définie sur la touche **<kbd>Espace</kbd>**.

---

## 📑 Sommaire

1. [Démarrage & Écran d'accueil](#-démarrage--écran-daccueil)
2. [Barre d'onglets (Style VS Code)](#-barre-donglets-style-vs-code)
3. [Explorateur de fichiers (Neo-tree)](#-explorateur-de-fichiers-neo-tree)
4. [Recherche rapide (Telescope)](#-recherche-rapide-telescope)
5. [LSP & Navigation de code](#-lsp--navigation-de-code)
6. [Complétion & Snippets](#-complétion--snippets)
7. [Formatage de code](#-formatage-de-code)
8. [Intégration Git (Gitsigns)](#-intégration-git-gitsigns)
9. [Fenêtres, Splits & Déplacements](#-fenêtres-splits--déplacements)
10. [Aide mémoire interactive (Which-Key)](#-aide-mémoire-interactive-which-key)

---

## ⚡ Démarrage & Écran d'accueil

* **Lancer sur un dossier** :
  ```bash
  nvim .
  # ou
  nvim mon-projet/
  ```
  👉 **Neo-tree** s'ouvre automatiquement à gauche pour afficher l'arborescence des fichiers du dossier.

* **Lancer sans argument** :
  ```bash
  nvim
  ```
  👉 Affiche votre **Dashboard** d'accueil avec votre logo ASCII et des raccourcis rapides :
  * <kbd>f</kbd> : Rechercher un fichier
  * <kbd>r</kbd> : Fichiers récents
  * <kbd>g</kbd> : Chercher du texte dans le projet
  * <kbd>c</kbd> : Ouvrir la configuration Neovim
  * <kbd>l</kbd> : Ouvrir l'interface Lazy (mises à jour des plugins)
  * <kbd>q</kbd> : Quitter

---

## 🗂️ Barre d'onglets (Style VS Code)

Chaque fichier ouvert apparaît sous forme d'onglet en haut de l'écran avec son icône, son statut de modification et ses éventuelles alertes LSP.

| Raccourci | Action |
| :--- | :--- |
| <kbd>Tab</kbd> | Passer à l'onglet suivant |
| <kbd>Shift</kbd> + <kbd>Tab</kbd> | Revenir à l'onglet précédent |
| <kbd>Espace</kbd> + <kbd>x</kbd> | Fermer le fichier / onglet courant |
| <kbd>Espace</kbd> + <kbd>b</kbd> <kbd>p</kbd> | **Pick** : Affiche une lettre sur chaque onglet pour sauter dessus instantanément |
| <kbd>Espace</kbd> + <kbd>b</kbd> <kbd>o</kbd> | Fermer tous les autres onglets |

---

## 🌲 Explorateur de fichiers (Neo-tree)

| Raccourci | Action |
| :--- | :--- |
| <kbd>Espace</kbd> + <kbd>e</kbd> | Afficher / Masquer l'explorateur Neo-tree |

**Commandes utiles une fois dans le panneau Neo-tree** :
* <kbd>Entrée</kbd> : Ouvrir le fichier sélectionné
* <kbd>a</kbd> : Créer un fichier (ajouter un `/` à la fin pour créer un dossier)
* <kbd>d</kbd> : Supprimer le fichier ou dossier
* <kbd>r</kbd> : Renommer
* <kbd>c</kbd> : Copier
* <kbd>m</kbd> : Déplacer (Cut / Move)
* <kbd>p</kbd> : Coller
* <kbd>H</kbd> : Basculer l'affichage des fichiers cachés (`.dotfiles`)
* <kbd>R</kbd> : Rafraîchir l'arbre
* <kbd>?</kbd> : Afficher le menu d'aide complet de Neo-tree

---

## 🔍 Recherche rapide (Telescope)

Telescope est votre outil de recherche universel (fichiers, texte, buffers, historique).

| Raccourci | Action |
| :--- | :--- |
| <kbd>Espace</kbd> + <kbd>f</kbd> <kbd>f</kbd> | **Trouver un fichier** par son nom |
| <kbd>Espace</kbd> + <kbd>f</kbd> <kbd>g</kbd> | **Live Grep** : Chercher du texte dans tout le projet |
| <kbd>Espace</kbd> + <kbd>f</kbd> <kbd>b</kbd> | Liste des **Buffers** ouverts |
| <kbd>Espace</kbd> + <kbd>f</kbd> <kbd>r</kbd> | Liste des **Fichiers récents** |

**Commandes dans la fenêtre Telescope** :
* <kbd>Ctrl</kbd> + <kbd>j</kbd> / <kbd>k</kbd> ou <kbd>↑</kbd> / <kbd>↓</kbd> : Faire défiler les résultats
* <kbd>Entrée</kbd> : Ouvrir la sélection
* <kbd>Ctrl</kbd> + <kbd>v</kbd> : Ouvrir dans un panneau vertical
* <kbd>Ctrl</kbd> + <kbd>x</kbd> : Ouvrir dans un panneau horizontal
* <kbd>Échap</kbd> : Fermer Telescope

---

## 🧠 LSP & Navigation de code

L'environnement de développement est géré par **Mason** et **nvim-lspconfig**.

| Raccourci | Action |
| :--- | :--- |
| <kbd>g</kbd> <kbd>d</kbd> | **Aller à la définition** (`Go to Definition`) |
| <kbd>K</kbd> | Afficher la documentation / signature sous le curseur (**Hover**) |
| <kbd>Espace</kbd> + <kbd>c</kbd> <kbd>a</kbd> | **Code Actions** (quick fixes, imports automatiques...) |
| <kbd>Espace</kbd> + <kbd>r</kbd> <kbd>n</kbd> | **Renommer** la variable/fonction partout dans le projet |
| <kbd>Espace</kbd> + <kbd>d</kbd> | Afficher le diagnostic d'erreur flottant sur la ligne |
| <kbd>[</kbd> <kbd>d</kbd> | Sauter au diagnostic/erreur précédent |
| <kbd>]</kbd> <kbd>d</kbd> | Sauter au diagnostic/erreur suivant |

> 💡 Tapez `:Mason` pour ouvrir l'interface visuelle et installer de nouveaux serveurs LSP (Python, Rust, C++, Go, TypeScript, etc.).

---

## ✍️ Complétion & Snippets

* En mode Insertion, la complétion s'ouvre automatiquement au fur et à mesure de votre frappe.
* <kbd>Ctrl</kbd> + <kbd>Espace</kbd> : Forcer l'ouverture de la popup de complétion.
* <kbd>Entrée</kbd> : Valider la suggestion sélectionnée.
* <kbd>Ctrl</kbd> + <kbd>b</kbd> / <kbd>f</kbd> : Faire défiler la documentation de la popup.

---

## 🎨 Formatage de code

Géré par **Conform.nvim** :
* Le code est **automatiquement formaté lors de la sauvegarde** (<kbd>Espace</kbd> + <kbd>w</kbd>).
* Vous pouvez forcer le formatage à tout moment :
  * <kbd>Espace</kbd> + <kbd>l</kbd> <kbd>f</kbd> : Formater le buffer courant (ex: Stylua, Black, Prettier...).

---

## 🌿 Intégration Git (Gitsigns)

Les modifications apparaissent en temps réel dans la marge gauche (barre bleue, verte ou rouge).

| Raccourci | Action |
| :--- | :--- |
| <kbd>]</kbd> <kbd>c</kbd> | Aller au bloc de modification suivant |
| <kbd>[</kbd> <kbd>c</kbd> | Aller au bloc de modification précédent |
| <kbd>Espace</kbd> + <kbd>h</kbd> <kbd>s</kbd> | **Stage** le bloc (hunk) |
| <kbd>Espace</kbd> + <kbd>h</kbd> <kbd>r</kbd> | **Reset** / annuler le bloc (hunk) |
| <kbd>Espace</kbd> + <kbd>h</kbd> <kbd>p</kbd> | Prévisualiser les modifications du bloc |
| <kbd>Espace</kbd> + <kbd>h</kbd> <kbd>b</kbd> | Git Blame sur la ligne courante |

---

## 🪟 Fenêtres, Splits & Déplacements

### Navigation entre fenêtres :
* <kbd>Ctrl</kbd> + <kbd>h</kbd> : Aller sur la fenêtre de **gauche**
* <kbd>Ctrl</kbd> + <kbd>j</kbd> : Aller sur la fenêtre du **bas**
* <kbd>Ctrl</kbd> + <kbd>k</kbd> : Aller sur la fenêtre du **haut**
* <kbd>Ctrl</kbd> + <kbd>l</kbd> : Aller sur la fenêtre de **droite**

### Redimensionner les fenêtres :
* <kbd>Ctrl</kbd> + <kbd>↑</kbd> / <kbd>↓</kbd> : Agrandir / réduire la hauteur
* <kbd>Ctrl</kbd> + <kbd>←</kbd> / <kbd>→</kbd> : Agrandir / réduire la largeur

### Sauvegarde & Quitter :
* <kbd>Espace</kbd> + <kbd>w</kbd> : Sauvegarder le fichier (`:w`)
* <kbd>Espace</kbd> + <kbd>q</kbd> : Quitter la fenêtre / Neovim (`:q`)

### Déplacer des lignes en mode Visuel :
* Sélectionnez des lignes avec <kbd>V</kbd>, puis :
  * <kbd>J</kbd> : Déplacer le bloc d'une ligne vers le bas
  * <kbd>K</kbd> : Déplacer le bloc d'une ligne vers le haut

---

## ❓ Aide mémoire interactive (Which-Key)

Si vous avez un doute sur un raccourci :
Appuyez simplement sur **<kbd>Espace</kbd>** et attendez **0.4 seconde** : une boîte contextuelle s'ouvrira en bas de l'écran listant toutes les commandes disponibles sous la touche Espace !
