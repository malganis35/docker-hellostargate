#!/bin/sh

# Remplacer le mot HOSTNAME par la valeur réelle dans tous les fichiers HTML
for file in /www/data/*.html; do
    sed -i.bak 's/HOSTNAME/'"$HOSTNAME"'/g' "$file"
done

# Démarrer nginx
exec "$@"
