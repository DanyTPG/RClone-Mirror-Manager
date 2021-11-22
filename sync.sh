#!/bin/bash
rclone --config rclone.conf lsf D1:Archive/Unsorted/ > list

cat list | grep  Mushoku.*\.mkv >> Mushoku
cat list | grep  Kimetsu.*\.mkv >> Kimetsu
#cat list | grep  Doom.*720.*mkv >> Doom720
#cat list | grep  Doom.*1080.*mkv >> Doom1080
cat list | grep  Legacies.*1080.*mkv >> Legacies1080
cat list | grep  Legacies.*720.*mkv >> Legacies720
cat list | grep  Wheel.*720.*mkv >> Wheel720
cat list | grep  Wheel.*1080.*mkv >> Wheel1080
cat list | grep  Dexter.*720p.*\.mkv >> Dexter720
cat list | grep  Dexter.*1080p.*\.mkv >> Dexter1080

IFS=$'\n'

#for i in $(cat Doom720 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Doom Patrol/Doom Patrol Season 3 (720p x265 10bit WEBRip PSA)/" --drive-server-side-across-configs ; done
#for i in $(cat Doom1080 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Doom Patrol/Doom Patrol Season 3 (1080p x265 10bit WEBRip PSA)/" --drive-server-side-across-configs ; done
for i in $(cat Legacies720 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (720p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Legacies1080 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (1080p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Wheel720 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Wheel of Time/Season 1 [720p x265 10bit WEBRip PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Wheel1080 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Wheel of Time/Season 1 [1080p x265 10bit WEBRip PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Mushoku | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Mushoku Tensei/" --drive-server-side-across-configs ; done
for i in $(cat Kimetsu | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Demon Slayer (Kimetsu no Yaiba)/" --drive-server-side-across-configs ; done
for i in $(cat Dexter720 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter/Dexter Season 9 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Dexter1080 | uniq) ; do rclone move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter/Dexter Season 9 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done

rm Mushoku Kimetsu Doom720 Doom1080 Legacies720 Legacies1080 Wheel720 Wheel1080 Dexter720 Dexter1080

##########################################################################################################################################
##########################################################################################################################################
touch p p1440
cat list | grep 1440p.mp4 >> p1440
for i in $(cat p1440 | uniq); do rclone --config rclone.conf copy D1:Archive/Unsorted/"$i" D6:Folder/PH/2K --drive-server-side-across-configs; done
for i in $(cat p1440 | uniq); do rclone --config rclone.conf delete D1:Archive/Unsorted/"$i" ; done

cat list | grep XXX >> p
cat list | grep PRT >> p

for i in $(cat p | uniq); do rclone --config rclone.conf copy D1:Archive/Unsorted/"$i" D6:Folder/PH/premium --drive-server-side-across-configs; done
for i in $(cat p | uniq); do rclone --config rclone.conf delete D1:Archive/Unsorted/"$i" ; done
rm p p1440 list


rclone --config rclone.conf sync  D1:Archive D2:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D3:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D4:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D5:Archive --drive-server-side-across-configs --checksum
#rclone --config rclone.conf sync  D1:Archive D6:Archive --drive-server-side-across-configs
#rclone --config rclone.conf sync  D6:Folder D2:Folder --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D6:Folder D3:Folder --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D6:Folder D4:Folder --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D6:Folder D5:Folder --drive-server-side-across-configs --checksum

date
