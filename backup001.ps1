

#robocopy is the new old new way

#last tweak be Dec 2 2014. appends etc
#last tweak be Apr 23 2015. fix path typo
#added drive letter global June 1 2016
# Jan 2018 - now on GitHub

$theDrive = "K"
$theDate = get-date
$logFileName = "D:\Backupscript-$(get-date -f yyyy-MM-dd).log"
add-content $logFileName "`n ###############New Back Up  $theDate"

#back up projects
robocopy "D:\Project Center" "${theDrive}:\Backup\Project Center" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"
#D:\myBackupLog.log

#back up music

robocopy "D:\Music" "${theDrive}:\Backup\Music" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up pictures

robocopy "D:\Pictures" "${theDrive}:\Backup\Pictures" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up learning centern

robocopy "D:\Learning Center" "${theDrive}:\Backup\Learning Center" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"


#back up The Archive

robocopy "D:\The Archive" "${theDrive}:\Backup\The Archive" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

print "Done Backups"

#back up  Videos

robocopy "D:\Video" "${theDrive}:\Backup\Video" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

print "Done Videos"