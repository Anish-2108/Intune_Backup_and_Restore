# Intune Backup and Restore

## Pre-Requisites
* AzureAD Module (Install-Module -Name AzureAD)
* MSGraphFunction Module (Install-Module -Name MSGraphFunctions)
* Import-Module MSGraphFunctions
* IntuneBackupandRestore Module (Install-Module -Name IntuneBackupAndRestore)


## Connect to Graph
* *Connect-graph*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/1.png?w=725)

## Import Module IntuneBackupandRestore
* *Import-Module IntuneBackupandRestore*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/2.png?w=500)

## Back Up Intune Configuration

* *Start-IntuneBackup -Path C:\New_folder\New*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/3.png?w=649)

## Compare Intune Configuration settings
* *Compare-IntuneBackupFile -ReferenceFilePath "C:\New_folder\New\Device Configurations\Bitlocker.json" -DifferenceFilePath "C:\New_folder\Latestbackup\Device Configurations\Bitlocker.json"*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/6.png?w=1024)

## Compare Intune Configuration Directory
* *Compare-IntuneBackupDirectories -Verbose -ReferenceDirectory C:\New_folder\New -DifferenceDirectory C:\New_folder\Latestbackup*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/4.png?w=1024)

## Restore Intune Configuration 
* *Start-IntuneRestoreConfig -Path C:\New_folder\Latestbackup*

![Dashboard](https://anishpathan.files.wordpress.com/2020/06/5.png?w=688)

* *Get the Powershell Commands from the repository.*

### I hope this was informative and helpful !!
