# Thème DADA France

Le thème et le contenu statique du site DADA.

Ce repo est étroitement lié au [repo de configuration et déploiement](https://github.com/okfnfr/dada-core).

## Comment contribuer

Jetez un oeil aux [tickets](https://github.com/okfnfr/dada-france-theme/issues).

Si vous contribuez du code sur ce repo, il ne sera déployé sur le site qu'après un `git push` sur le repo principal.

Il y'a 2 branches principales:

- `staging` est deployée sur le site de développement/test (https://dadastaging.okfn.fr pour l'instant)
- `master` est deployée sur le site de production

Pensez à faire vos changements sur la branche `staging` (ou sur une branche basée dessus si ça va durer un moment), puis faites une PR sur `master`, de façon que les 2 branches restent synchronisées.


## Comment s'y retrouver ?

Ci-dessous on partage les trucs et astuces pour s'y retrouver dans le code et le contenu texte.

### Configuration

Par exemple, nom du site, adresses email des admins du site, version d'alaveteli...

Ca se passe dans [l'autre dépot](https://github.com/okfnfr/dada-core). Notez que tout est installé/configuré sur les serveurs via ansible, et qu'il faut donc modifier les scripts ansible, ou les variables (qui sont parfois séparées dans des `group_vars` entre `staging` et `production`.

### Texte

- Le texte vient principalement de la traduction française disponible ici https://www.transifex.com/mysociety/alaveteli/translate/#fr_FR/ Trouver la bonne chaine de caractères à modifier relève un peu de la magie noire, voir ci-dessous.

- D'autres  contenus textes en français sont directement écrits dans le code

- Enfin, certains éléments généraux comme le nom du site sont définis dans le répertoire `okfnfr/dada-core`

- Pour savoir où modifier un contenu texte :
  1. Faire une recherche de la traduction dans transifex `translation_text:texte`
  2. Faire une recherche dans les répertoires`okfnfr/data-france-theme`, `okfnfr/alaveteli` et `okfnfr/dada-core`. Pour ce faire, le mieux est d'avoir une copie du répertoire en local et d'utiliser un logiciel comme Sublime qui permet la recherche textuelle dans tout un dossier `Ctrl+Shift+F`

### HTML/CSS

- Les fichiers dans le répertoire `okfnfr/dada-france-theme` prennent le dessus sur les fichiers similaires dans le code source (qui vient normalement du repo mysociety/alaveteli, auquel on ne touche pas). Pour l'essentiel, les fichiers dont on parle sont dans `dada-france-theme/lib/views/`. S'il faut modifier un fichier source qui n'a pas d'équivalent dans notre thème, commencer par copier le fichier depuis le code source (dans mysociety/alaveteli) vers notre dépot de thème (quelque chose comme `cp alaveteli/app/a/b/c alaveteli/lib/themes/dada-france-theme/lib/a/b/c`), puis modifier la copie seulement.

Petit "algorithme" pour trouver où faire vos modifs:
- ouvrir la page web qui vous chatouille dans votre navigateur préféré, et utiliser les outils de dev pour trouver l'id ou la classe HTML du morceau à changer
- chercher cet identifiant dans `dada-france-theme` et modifier le fichier correspondant
- s'il n'y est pas, chercher dans `mysociety/alaveteli/` et copier le fichier à modifier comme expliqué ci-dessus (estimer le chemin d'accès en comparant les fichiers des deux côtés pour trouver le bon endroit).
