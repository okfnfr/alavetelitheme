# Thème DADA France

Le thème et le contenu statique du site DADA.

Ce repo est étroitement lié au [repo de configuration et déploiement](https://github.com/okfnfr/dada-core).

## Comment contribuer

Jetez un oeil aux [tickets](https://github.com/okfnfr/dada-france-theme/issues).

Si vous contribuez du code sur ce repo, il ne sera déployé sur le site qu'après un `git push` sur le repo principal.

Il y'a 2 branches principales:

- `staging` est deployée sur le site de développement/test (https://dadastaging.okfn.fr pour l'instant)
- `master` est deployée sur le site de production


## Comment s'y retrouver ?

Ci-dessous on partage les trucs et astuces pour s'y retrouver dans le code et le contenu texte.

### Texte

- Les fichiers dans le répertoire `okfnfr/data-france-theme` remplace les fichiers similaires dans le répertoire `okfnfr/alaveteli` (à ne pas modifier)

- Le texte vient principalement de la traduction française disponible ici https://www.transifex.com/mysociety/alaveteli/translate/#fr_FR/

- D'autres  contenus textes en français sont directement écrits dans le code

- Enfin, certains éléments généraux comme le nom du site sont définis dans le répertoire `okfnfr/dada-core`

- Pour savoir où est modifier un contenu texte :
	1. Faire une recherche de la traduction dans transifex `translation_text:texte`
	2. Faire une recherche dans les répertoires`okfnfr/data-france-theme`, `okfnfr/alaveteli` et `okfnfr/dada-core`. Pour ce faire, le mieux est d'avoir une copie du répertoire en local et d'utiliser un logiciel comme Sublime qui permet la recherche textuelle dans tout un dossier `Ctrl+Shift+F`

### CSS
