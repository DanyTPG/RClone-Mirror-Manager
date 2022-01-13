#!/bin/bash
rclone --config rclone.conf lsf D1:Archive/Unsorted/ > list

#cat list | grep  Mushoku.*\.mkv >> Mushoku
cat list | grep  Kimetsu.*\.mkv >> Kimetsu
cat list | grep  Demon.*\.mkv >> Demon
cat list | grep  Blade.*720.*mkv >> Blade720
cat list | grep  Blade.*1080.*mkv >> Blade1080
cat list | grep  Boba.*720.*mkv >> Boba720
cat list | grep  Boba.*1080.*mkv >> Boba1080
cat list | grep  Boba.*2160.*mkv >> Boba2160
cat list | grep  Legacies.*1080.*mkv >> Legacies1080
cat list | grep  Legacies.*720.*mkv >> Legacies720
cat list | grep  Attack.*PSA.*mkv >> AttackPSA
cat list | grep  Judas.*Attack.*mkv >> AttackJudas
cat list | grep  Dexter.*720p.*\.mkv >> Dexter720
cat list | grep  Dexter.*1080p.*\.mkv >> Dexter1080
cat list | grep Expanse.*720p.*\.mkv >> Expanse720
cat list | grep Expanse.*1080p.*\.mkv >> Expanse1080
cat list | grep Expanse.*2160p.*\.mkv >> Expanse2160
cat list | grep  Superman.*720p.*\.mkv >> Superman720
cat list | grep  Superman.*1080p.*\.mkv >> Superman1080
cat list | grep  Peacemaker.*720p.*\.mkv >> Peacemaker720
cat list | grep  Peacemaker.*1080p.*\.mkv >> Peacemaker1080

IFS=$'\n'

for i in $(cat Blade720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Blade Runner: Black Lotus/Season 1 [x265 10bit WEBRip PSA]/720p/" --drive-server-side-across-configs ; done
for i in $(cat Blade1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Blade Runner: Black Lotus/Season 1 [x265 10bit WEBRip PSA]/1080p/" --drive-server-side-across-configs ; done
for i in $(cat Boba720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Book of Boba Fett/Season 1 [720-1080-2160 x265 10bit WEBRip PSA]/720p/" --drive-server-side-across-configs ; done
for i in $(cat Boba1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Book of Boba Fett/Season 1 [720-1080-2160 x265 10bit WEBRip PSA]/1080p/" --drive-server-side-across-configs ; done
for i in $(cat Boba2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Book of Boba Fett/Season 1 [720-1080-2160 x265 10bit WEBRip PSA]/2160p/" --drive-server-side-across-configs ; done
for i in $(cat Expanse720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [720p WEBRip x265 10bit PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Expanse1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [1080p WEBRip x265 10bit PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Expanse2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [2160p HDR10Plus WEBRip x265 PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Legacies720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (720p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Legacies1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (1080p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat AttackPSA | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Attack on Titan/Season 4/PSA/" --drive-server-side-across-configs ; done
for i in $(cat AttackJudas | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Attack on Titan/Season 4/Judas/" --drive-server-side-across-configs ; done
#for i in $(cat Mushoku | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Mushoku Tensei/[Judas] Mushoku Tensei - Isekai Ittara Honki Dasu (Season 1) [1080p][HEVC x265 10bit][Multi-Subs]/" --drive-server-side-across-configs ; done
for i in $(cat Demon | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Demon Slayer (Kimetsu no Yaiba)/[PSA] Kimetsu no Yaiba (Season 3) [WEBRip 1080p][HEVC x265 10bit]/" --drive-server-side-across-configs ; done
for i in $(cat Kimetsu | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Demon Slayer (Kimetsu no Yaiba)/[Judas] Kimetsu no Yaiba (Season 3) [BD 1080p][HEVC x265 10bit][Dual-Audio][Multi-Subs]/" --drive-server-side-across-configs ; done
for i in $(cat Dexter720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter New Blood/Season 1 [x265 10bit WEBRip PSA]/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Dexter1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter New Blood/Season 1 [x265 10bit WEBRip PSA]/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Superman720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Superman1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Peacemaker720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peacemaker/Season 1 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Peacemaker1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peacemaker/Season 1 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done



rm Kimetsu Legacies720 Legacies1080 Wheel720 Wheel1080 Dexter720 Dexter1080 Blade720 Blade1080 Demon Peacemaker720 Peacemaker1080
rm Expanse2160 Expanse1080 Expanse720 Boba720 Boba1080 AttackPSA AttackJudas Superman720 Superman1080

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
