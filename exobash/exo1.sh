#!/bin/bash

# Fichier de tâches
todo_file="tasks.txt"

# Création du fichier de tâches
if [ ! -f $todo_file ]; then
    touch $todo_file
fi

# Fonction pour afficher le menu
function show_menu {
    echo "-----------------------------------"
    echo "Bienvenue dans votre gestionnaire de tâches !"
    echo "-----------------------------------"
    echo "1. Ajouter une tâche"
    echo "2. Supprimer une tâche"
    echo "3. Afficher les tâches"
    echo "4. Quitter"
    echo "-----------------------------------"
    echo -n "Choisissez une option : "
}

# Fonction pour afficher les tâches
function display_tasks {
    echo "-----------------------------------"
    echo "Tâches actuelles :"
    if [ ! -s $todo_file ]; then
        echo "Aucune tâche pour le moment."
    else
        # Lire et afficher les tâches avec numérotation
        nl -w 2 -s '. ' $todo_file
    fi
    echo "-----------------------------------"
}

# Fonction pour ajouter une tâche
function add_task {
    echo -n "Entrez la description de la tâche : "
    read task_description
    echo $task_description >> $todo_file
    echo "Tâche ajoutée : '$task_description'"
    echo "-----------------------------------"
}

# Fonction pour supprimer une tâche avec gestion des erreurs
function delete_task {
    display_tasks
    if [ ! -s $todo_file ]; then
        echo "Aucune tâche à supprimer."
        return
    fi

    total_tasks=$(wc -l < $todo_file)
    
    if [ $total_tasks -eq 0 ]; then
        echo "Aucune tâche disponible à supprimer."
        return
    fi

    echo -n "Entrez le numéro de la tâche à supprimer : "
    read task_number

    # Vérification du format numérique et que la tâche existe
    if [[ $task_number =~ ^[0-9]+$ ]]; then
        if [ $task_number -le $total_tasks ] && [ $task_number -gt 0 ]; then
            # Supprimer la tâche par son numéro
            sed -i "${task_number}d" $todo_file
            echo "Tâche numéro $task_number supprimée."
        else
            echo "Erreur : Numéro de tâche hors de portée. Il n'y a que $total_tasks tâche(s)."
        fi
    else
        echo "Erreur : Veuillez entrer un numéro de tâche valide."
    fi
    echo "-----------------------------------"
}

# Boucle principale du script
while true; do
    show_menu
    read option
    case $option in
        1)
            add_task  # Ajout d'une tâche
            ;;
        2)
            delete_task  # Suppression d'une tâche
            ;;
        3)
            display_tasks  # Affichage des tâches
            ;;
        4)
            echo "Au revoir !"
            break  # Quitter le script
            ;;
        *)
            echo "Option invalide, veuillez réessayer."
            ;;
    esac
done