# =====================================================================================================================
# NOM: Calculatrice.ps1
# AUTEUR: Mounir Fiaux, CPNV
# DATE: 07/05/2020
#
# VERSION 1.0
# TITRE: Calculatrice
# DESCRIPTION: Programme servant à fournir une calculatrice complète à l'utilisateur 
# =====================================================================================================================

# Vider l'écran pour l'affichage et affiche message de bienvenue
cls;
Write-Host "Voici une machine à calculer. Donnez lui le permier nombre puis un deuxième nombre lui, enfin opération souhaitée, faites entrer entre chaque étapes.";

# Demande à l'utilisateur les valeurs
[uint16]$premierNombre =  Read-Host -Prompt "Entrez votre premier chiffre";
[uint16]$deuxiemeNombre =  Read-Host -Prompt "Entrez votre deuxième chiffre";
[string]$operateur = Read-Host -Prompt "Entrez votre opérateur (+, -, /, *)";

# Calculer le résultat en fonction de l'opérateur
Switch -Exact($operateur)
{
    "+"
    {
        $Resultat = $premierNombre + $deuxiemeNombre;
        break;
    }
    "-"
    {
        $Resultat = $premierNombre - $deuxiemeNombre;
        break;
    }
    "*"
    {
        $Resultat = $premierNombre * $deuxiemeNombre;
        break;
    }
    "/"
    {
        $Resultat = $premierNombre / $deuxiemeNombre;
        break;
    }
    # Affiche l'erreur à l'utilisateur si mauvaise saisie
    default  
    {
        Write-Host "Erreur";
        Clear-Variable -Name "Resultat";
    }
}

# Ecrit le résultat
if($Resultat)
{
    Write-Host "Résultats : $premierNombre $operateur $deuxiemeNombre = $Resultat";
}