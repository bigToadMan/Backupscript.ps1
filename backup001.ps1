#robocopy is the new old new way

#last tweak be Dec 2 2014. appends etc
#last tweak be Apr 23 2015. fix path typo
#added drive letter global June 1 2016
# Jan 2018 - now on GitHub
#more stuff march 2019 -- but in git so why comment. (found what PRN error was too)

$theDrive = "D"
$sourceBase = "C:\Users\capta\Documents"
$mediaBase = "C:\Users\capta\"
$theDate = get-date
$logFileName = "${theDrive}:\Backupscript-$(get-date -f yyyy-MM-dd).log"
add-content $logFileName "`n ###############New Back Up  $theDate"

#back up projects
robocopy /R:1 /W:1 "${sourceBase}\Project Center" "${theDrive}:\Backup\Project Center" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up music
robocopy  /R:1 /W:1 "${mediaBase}\Music" "${theDrive}:\Backup\Music" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up pictures
robocopy  /R:1 /W:1 "${mediaBase}\Pictures" "${theDrive}:\Backup\Pictures" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up learning centern
robocopy  /R:1 /W:1 "${sourceBase}\Reference Center" "${theDrive}:\Backup\Reference Center" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up The Archive
robocopy  /R:1 /W:1  "${sourceBase}\The Archive" "${theDrive}:\Backup\The Archive" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up  Videos
robocopy  /R:1 /W:1 "${mediaBase}\Videos" "${theDrive}:\Backup\Videos" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"

#back up  Media pit
robocopy  /R:1 /W:1 "${sourceBase}\Media Pit" "${theDrive}:\Backup\Media Pit" /MIR /XA:SH /XJD /NP /LOG+:"${logFileName}"