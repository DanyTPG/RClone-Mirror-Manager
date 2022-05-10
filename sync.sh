#!/bin/bash
rclone --config rclone.conf lsf D1:Archive/Unsorted/ -R > list
#cat list | grep \\[SubsPlease\\].*Shingeki.*\.mkv > subsAttack

cat list | grep \\[Judas\\].*Spy.*\.mkv > spy
cat list | grep  Saul.*720p.*\.mkv >> Saul720
cat list | grep  Saul.*1080p.*\.mkv >> Saul1080
cat list | grep  Saul.*2160p.*\.mkv >> Saul2160
cat list | grep  Halo.*720p.*\.mkv >> Halo720
cat list | grep  Halo.*1080p.*\.mkv >> Halo1080
cat list | grep  Halo.*2160p.*\.mkv >> Halo2160
cat list | grep  Legacies.*1080.*mkv >> Legacies1080
cat list | grep  Legacies.*720.*mkv >> Legacies720
cat list | grep  Superman.*720p.*\.mkv >> Superman720
cat list | grep  Superman.*1080p.*\.mkv >> Superman1080
cat list | grep  Barry.S03.*720p.*\.mkv >> Barry720
cat list | grep  Barry.S03.*1080p.*\.mkv >> Barry1080

UPDATED=$(cat spy Saul720 Saul1080 Saul2160 Halo720 Halo1080 Halo2160 Legacies1080 Legacies720 Superman720 Superman1080 Barry720 Barry1080 | grep . -c)

if [ $UPDATED != 0 ]; then

IFS=$'\n'
for i in $(cat Legacies720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (720p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Legacies1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (1080p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Superman720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Superman1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Halo720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/Season 1/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/Season 1/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/Season 1/2160p/"  --drive-server-side-across-configs ; done
for i in $(cat Saul720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Better Call Saul/Season 6/720p [PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Saul1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Better Call Saul/Season 6/1080p [PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Saul2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Better Call Saul/Season 6/2160p [PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Barry720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Barry/Season 3/720p [PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Barry1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Barry/Season 3/1080p [PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat spy | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Spy x Family/Season 1/"  --drive-server-side-across-configs ; done




rm Legacies720 Legacies1080 Halo720 Halo1080 Halo2160 Saul720 Saul1080 Saul2160 Superman720 Superman1080 spy

for i in $(cat list | grep .*\.txt) ; do rclone delete D1:"Archive/Unsorted/$i"; done

rclone --config rclone.conf sync  D1:Archive D2:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D3:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D4:Archive --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D1:Archive D5:Archive --drive-server-side-across-configs --checksum
#rclone --config rclone.conf sync  D1:Archive D6:Archive --drive-server-side-across-configs

fi

##########################################################################################################################################
##########################################################################################################################################

cat list | grep 1440p.mp4 >> p1440
cat list | grep -i 2160p.mp4 >> p1440
cat list | grep XXX >> p

UPDATED=$(cat p p1440 | grep . -c)

if [ $UPDATED != 0 ]; then

IFS=$'\n'
for i in $(cat p1440 | uniq); do rclone --config rclone.conf copy D1:Archive/Unsorted/"$i" D6:Folder/PH/2K --drive-server-side-across-configs; done
for i in $(cat p1440 | uniq); do rclone --config rclone.conf delete D1:Archive/Unsorted/"$i" ; done

for i in $(cat p | uniq); do rclone --config rclone.conf copy D1:Archive/Unsorted/"$i" D6:Folder/PH/premium --drive-server-side-across-configs; done
for i in $(cat p | uniq); do rclone --config rclone.conf delete D1:Archive/Unsorted/"$i" ; done
rm p p1440 list


#rclone --config rclone.conf sync  D6:Folder D2:Folder --drive-server-side-across-configs --checksum
#rclone --config rclone.conf sync  D6:Folder D3:Folder --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D6:Folder D4:Folder --drive-server-side-across-configs --checksum
rclone --config rclone.conf sync  D6:Folder D5:Folder --drive-server-side-across-configs --checksum

fi
