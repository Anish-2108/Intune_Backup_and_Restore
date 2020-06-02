.NOTES
		===========================================================================
		Created on:     6/2/2020 10:41 PM
		Created by:   	Anish Pathan
		E-Mail:		anishpathan92@outlook.com
		GitHub:		https://github.com/Anish-2108
		===========================================================================


#AzureAD Module
Install-Module -Name AzureAD

#MSGraphFunction Module
Install-Module -Name MSGraphFunctions

#IntuneBackupandRestore Module
Install-Module -Name IntuneBackupAndRestore

#Import MSGraphFunctions Module
Import-Module MSGraphFunctions

#Connect to Microsoft Graph
Connect-Graph

#Import Module IntuneBackupandRestore
Import-Module IntuneBackupandRestore

#Intune Backup command
Start-IntuneBackup -Path C:\New_folder\Latestbackup


#Compare Backup to chek the recent chnages
Compare-IntuneBackupFile -ReferenceFilePath "C:\New_folder\New\Device Configurations\Bitlocker.json" -DifferenceFilePath "C:\New_folder\Latestbackup\Device Configurations\Bitlocker.json"

#Compare Backup to check directory change
Compare-IntuneBackupDirectories -Verbose -ReferenceDirectory C:\New_folder\New -DifferenceDirectory C:\New_folder\Latestbackup

#Restore Backup PS command
Start-IntuneRestoreConfig -Path C:\New_folder\Latestbackup




