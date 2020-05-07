# =====================================================================================================================
# NOM: calculette-graphique.ps1
# AUTEUR: Samuel Roland, CPNV
# DATE: 07/05/2020
#
# VERSION 1.0
# TITRE: Calculette Graphique
# DESCRIPTION: Programme servant à fournir une calculatrice graphique complète à l'utilisateur
# =====================================================================================================================

# Import des classe Windows Forms .Net
Add-Type –AssemblyName System.Windows.Forms

# créer le formulaire Windows
$mainForm = New-Object System.Windows.Forms.Form

# Définir une taille au formulaire
$mainForm.Width = 500
$mainForm.Height = 600

$btn = New-Object Forms.Label
$btn = System.Drawing.Point(37, 35);


# Afficher le formulaire
$MainForm.ShowDialog()