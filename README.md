# JenkinsTest

## rendre un fichier exécutable avec git afin qu'il ne soit pas réinitialisé à chaque clone
git update-index --chmod=+x entrypoint.sh

## Vérifier que le fichier est exécutable, 755 indique l’autorisation exécutable
git ls-files --stage entrypoint.sh
