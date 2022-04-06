#!/bin/bash
rclone --config rclone.conf lsf D1:Archive/Unsorted/ -R > list
#cat list | grep \\[SubsPlease\\].*Shingeki.*\.mkv > subsAttack


cat list | grep  Eve.*720p.*\.mkv >> Eve720
cat list | grep  Eve.*1080p.*\.mkv >> Eve1080
cat list | grep  Halo.*720p.*\.mkv >> Halo720
cat list | grep  Halo.*1080p.*\.mkv >> Halo1080
cat list | grep  Halo.*2160p.*\.mkv >> Halo2160
cat list | grep  Legacies.*1080.*mkv >> Legacies1080
cat list | grep  Legacies.*720.*mkv >> Legacies720
cat list | grep Moon.*720p.*\.mkv >> Moon720
cat list | grep Moon.*1080p.*\.mkv >> Moon1080
cat list | grep Moon.*2160p.*\.mkv >> Moon2160
cat list | grep  Superman.*720p.*\.mkv >> Superman720
cat list | grep  Superman.*1080p.*\.mkv >> Superman1080



IFS=$'\n'
for i in $(cat Moon720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Moon Knight/Season 1 [720-1080-2160 WEBRip x265 10bit PSA]/720p/" --drive-server-side-across-configs ; done
for i in $(cat Moon1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Moon Knight/Season 1 [720-1080-2160 WEBRip x265 10bit PSA]/1080p/" --drive-server-side-across-configs ; done
for i in $(cat Moon2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Moon Knight/Season 1 [720-1080-2160 WEBRip x265 10bit PSA]/2160p/" --drive-server-side-across-configs ; done
for i in $(cat Legacies720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (720p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Legacies1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (1080p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Superman720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Superman1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Eve720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Killing Eve/Season 4/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Eve1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Killing Eve/Season 4/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/2160p/"  --drive-server-side-across-configs ; done

rm Legacies720 Legacies1080  Eve720 Eve1080 Halo720 Halo1080 Halo2160
rm Moon2160 Moon1080 Moon720 Superman720 Superman1080 

for i in $(cat list | grep .*\.txt) ; do rclone delete D1:"Archive/Unsorted/$i"; done

##########################################################################################################################################
##########################################################################################################################################
touch p p1440
cat list | grep 1440p.mp4 >> p1440
cat list | grep 2160p.mp4 >> p1440
for i in $(cat p1440 | uniq); do rclone --config rclone.conf copy D1:Archive/Unsorted/"$i" D6:Folder/PH/2K --drive-server-side-across-configs; done
for i in $(cat p1440 | uniq); do rclone --config rclone.conf delete D1:Archive/Unsorted/"$i" ; done

cat list | grep XXX >> p

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
