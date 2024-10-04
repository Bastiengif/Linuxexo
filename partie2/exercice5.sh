#!/bin/bash

# Créer l'arborescence des répertoires
mkdir -p dossier/{autreDossier,dossierAutre,encoreUn{,2,3},ledernier,monautreDossier} \
         dossier/monautredossier/dossier1/{dossier1bis1,dossier1bis2/dossier1bis3} \
         dossier/monautredossier/dossier2 \
         dossier/sousDossier

# Confirmation
echo "Structure des répertoires créée avec succès."

#mettre dans le terminal pwd qui feras le liens direct avec le dossier

