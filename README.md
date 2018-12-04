# PartielDevops
Pour améliorer le workflow, une bonne pratique est de protéger notre branch "master" (ici development) sur GitHub, afin de faire en sorte que plusieurs personnes doivent vérifier le code avant de pouvoir le push sur "master". Comme ça le stagiaire il pourra pas faire planter l'application un vendredi (ou au moins on aura d'autres personnes à accuser).

Ensuite, il faut avoir plusieurs branch. Dans mon cas, je n'ai déployé que sur "development", mais il faudrait avoir des branch pour chaque feature, pour les hotfix, etc.

Une autre erreur que le stagiaire à faire est d'avoir déployé un vendredi. #NoDeployFriday pour avoir un bon week-end.

Pour faciliter l'intégration de nouveaux venus, on peut préparer un fichier qui lui permettra de télécharger toutes les dépendances en une fois.
On peut aussi préparer des fichiers templates pour les fichiers qui ont été ignorés par le .gitignore.

## Github
Lien Github : https://github.com/NicolasResmi/PartielDevops

## Heroku
Lien app Development : https://devops-development-nr.herokuapp.com/
Lien app Staging : https://devops-staging-nr.herokuapp.com/
Lien app Production : https://devops-production-nr.herokuapp.com/
J'ai promote le contenu de Development sur Staging et Production afin d'éviter de tomber sur "Heroku | Welcome to you new app!". Le contenu des trois est donc exactement le même.
