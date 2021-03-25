#============================Début du script============================
#Nom : exerciceAUDIT.ps1
#Date de création : 18/03/2021
#Auteur : GENTY Flavien, PLC
#Version 1
#=======================================================================

#forcer le type d'execution 
Set-ExecutionPolicy RemoteSigned

#chargement de la bibliothèque
[System.Windows.Forms.Application]::EnableVisualStyles()
Add-Type -AssemblyName System.Windows.Forms

#création de la fenêtre et de ses paramètres

$Form = New-Object System.Windows.Forms.Form
$Form.ClientSize = ‘500,500’
$Form.Text = "Mon UI en PS "
$Form.FormBorderStyle = ‘Fixed3D’
$Form.MaximizeBox = $false

#création de la barre de menu
$Menu = New-Object System.Windows.Forms.MenuStrip
$Menu.Location = New-Object System.Drawing.Point(0,0)
$Menu.ShowItemToolTips = $True

$MenuFile = New-Object System.Windows.Forms.ToolStripMenuItem
$MenuFile.Text = " &Fichier "
$MenuAudit = New-Object System.Windows.Forms.ToolStripMenuItem
$MenuAudit.Text = " &Menu audit "
$MenuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
$MenuAbout.Text = " &À propos "

#création de la zone "Audit Services"

$GroupBoxServices = New-Object System.Windows.Forms.GroupBox
$GroupBoxServices.Location = New-Object System.Drawing.Point(20,50)
$GroupBoxServices.Width = 180
$GroupBoxServices.Height = 220
$GroupBoxServices.Text = " Audit Services "

$BoutonServices = New-Object System.Windows.Forms.Button
$BoutonServices.Location = New-Object System.Drawing.Point(40,150)
$BoutonServices.Width = 125
$BoutonServices.Text = " Cliquez moi ! " 

#création de la zone " Audit DHCP "

$GroupBoxDHCP = New-Object System.Windows.Forms.GroupBox
$GroupBoxDHCP.Location = New-Object System.Drawing.Point(250,50)
$GroupBoxDHCP.Width = 180
$GroupBoxDHCP.Height = 220
$GroupBoxDHCP.Text = " Audit DHCP "

$BoutonDHCP = New-Object System.Windows.Forms.Button
$BoutonDHCP.Location = New-Object System.Drawing.Point(275,150)
$BoutonDHCP.Width = 125
$BoutonDHCP.Text = " Cliquez moi ! " 

#création de la zone "Audit DNS"

$GroupBoxDNS = New-Object System.Windows.Forms.GroupBox
$GroupBoxDNS.Location = New-Object System.Drawing.Point(20,275)
$GroupBoxDNS.Width = 180
$GroupBoxDNS.Height = 220
$GroupBoxDNS.Text = " Audit DNS "

$BoutonDNS = New-Object System.Windows.Forms.Button
$BoutonDNS.Location = New-Object System.Drawing.Point(40,375)
$BoutonDNS.Width = 125
$BoutonDNS.Text = " Cliquez moi ! "

création de la zonz "Audit AD"

$GroupBoxAD = New-Object System.Windows.Forms.GroupBox
$GroupBoxAD.Location = New-Object System.Drawing.Point(250,275)
$GroupBoxAD.Width = 180
$GroupBoxAD.Height = 220
$GroupBoxAD.Text = " Audit AD "

$BoutonAD = New-Object System.Windows.Forms.Button
$BoutonAD.Location = New-Object System.Drawing.Point(275, 375)
$BoutonAD.Width = 125
$BoutonAD.Text = " Cliquez moi ! "

#affichage des variables
$Form.controls.AddRange(@($BoutonServices,$BoutonDHCP,$BoutonDNS; $BoutonAD))
$Form.controls.AddRange(@($GroupBoxServices,$GroupBoxDHCP,$GroupBoxDNS, $GroupBoxAD))
$Form.controls.AddRange(@($Menu))
$Menu.Items.AddRange(@($MenuFile,$MenuAudit,$MenuAbout))

$Form.ShowDialog()

#============================Début du script============================
#Nom : exerciceAudit.ps1
#Date de création : 18/03/2020
#Auteur : GENTY Flavien, PLC
#Version 1
#=======================================================================