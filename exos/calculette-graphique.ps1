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

$horizontalMargin = 50
$verticalMargin = 20

$horizontalSpace = 10
$verticalSpace = 5

$startX = 60
$startY = 70

# Définir une taille au formulaire
$mainForm.Width = 500
$mainForm.Height = 600
$mainForm.Text = "Calculatrice graphique - SRD"
$ligne = 0
$colonne = 0
$buttonsname = @("+/-", "0", ",")

for ($i = 1; $i -le 12; $i++){
    if ($colonne -eq 3)
    {
        $colonne = 0
    }
    $xPosition = $startX
    $xPosition = $horizontalMargin + $colonne *(70 + $horizontalSpace)
    $yPosition = $startY

    $colonne++

    $yPosition = $verticalMargin + $ligne * (70 + $verticalSpace)

    if ($i%3 -eq 0)
    {
        $ligne++
    }

    $lbl1 = New-Object System.Windows.Forms.Label
    $lbl1.Name = "lblFirstNumber"
    $lbl1.Text = "first"
    $lbl1.Location = "100, 0"
    $lbl1.Width = "50"
    $lbl1.BackColor = "yellow"

    $operator = New-Object System.Windows.Forms.Label
    $operator.Name = "lblOperator"
    $operator.Text = "+"
    $operator.Location = "150, 0"
    $operator.Width = "50"
    $operator.BackColor = "lightblue"

    $lbl2 = New-Object System.Windows.Forms.Label
    $lbl2.Name = "lblSecondNumber"
    $lbl2.Text = "second"
    $lbl2.Location = "200, 0"
    $lbl2.Width = "50"
    $lbl2.BackColor = "yellow"


    $btn = New-Object System.Windows.Forms.Button
    $btn.Location = "$xPosition, $yPosition";
    $btn.Width = 70
    $btn.Height = 70
    $btn.Name = "btn_" + $i
    $text = $i
    if ($i -gt 9)
    {
        $text = $buttonsname[$i - 10]
    }


    $btn.Text = $text
    $btn.Add_Click({
        param($sender, $e)
        sendButtonValue($sender.Text)
    })
    $mainForm.Text = "saklut"
    $mainForm.Controls.Add($btn)
    $mainForm.Controls.Add($lbl1)
    $mainForm.Controls.Add($lbl2)
    $mainForm.Controls.Add($operator)
}
$firstNumber = 0
$secondNumber = 0
$first = 1
function addNumber($number)
{
    if ($script:first -eq 1)
    {
        $script:firstNumber = $script:firstNumber * 10 + $value
    }
    else
    {
        $script:secondNumber = $script:secondNumber * 10 + $value
    }

    $script:lbl1.Text = $firstNumber.ToString()
    $script:lbl2.Text = $secondNumber

}

function changeOperator($value)
{
    if ($first -eq 1)
    {
        $first = 0
    }
    else
    {
        $first = 1
    }
}

# receive the last clicked button value
function sendButtonValue($value)
{
    $mainForm.Text = $value
    if ([int]$value -lt 10)
    {
        addNumber($value)
    }
    else
    {
        changeOperator($value)
    }
}

# Afficher le formulaire
$MainForm.ShowDialog()