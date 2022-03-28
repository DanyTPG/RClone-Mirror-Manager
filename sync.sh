#!/bin/bash
rclone --config rclone.conf lsf D1:Archive/Unsorted/ -R > list
cat list | grep \\[SubsPlease\\].*Sono.*\.mkv > Sono
cat list | grep \\[SubsPlease\\].*Shingeki.*\.mkv > subsAttack
cat list | grep  Peaky.*720p.*\.mkv >> Peaky720
cat list | grep  Peaky.*1080p.*PSA\.mkv >> Peaky1080x
cat list | grep  Peaky.*1080p.*264.*\.mkv >> Peaky1080
cat list | grep  Peaky.*2160p.*\.mkv >> Peaky2160
cat list | grep  Eve.*720p.*\.mkv >> Eve720
cat list | grep  Eve.*1080p.*\.mkv >> Eve1080
cat list | grep  Halo.*720p.*\.mkv >> Halo720
cat list | grep  Halo.*1080p.*\.mkv >> Halo1080
cat list | grep  Halo.*2160p.*\.mkv >> Halo2160
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
cat list | grep  Snowpiercer.S03.*720p.*\.mkv >> Snowpiercer720
cat list | grep  Snowpiercer.S03.*1080p.*\.mkv >> Snowpiercer1080
cat list | grep  Father.*720p.*\.mkv >> Father720
cat list | grep  Father.*1080p.*\.mkv >> Father1080

IFS=$'\n'
for i in $(cat Sono | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/My Dress-Up Darling (Sono Bisque Doll wa Koi wo Suru)/" --drive-server-side-across-configs ; done
for i in $(cat Expanse720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [720p WEBRip x265 10bit PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Expanse1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [1080p WEBRip x265 10bit PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Expanse2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/The Expanse/The Expanse Season 6 [2160p HDR10Plus WEBRip x265 PSA]/" --drive-server-side-across-configs ; done
for i in $(cat Legacies720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (720p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat Legacies1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Legacies/Legacies Season 4 (1080p x265 10bit WEBRip PSA)/"  --drive-server-side-across-configs ; done
for i in $(cat subsAttack | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Attack on Titan/Season 4/SubsPlease/" --drive-server-side-across-configs ; done
for i in $(cat AttackPSA | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Attack on Titan/Season 4/PSA/" --drive-server-side-across-configs ; done
for i in $(cat AttackJudas | uniq) ; do rclone --config rclone.conf move  -P D1:Archive/Unsorted/"$i" D1:"Archive/Anime/Attack on Titan/Season 4/Judas/" --drive-server-side-across-configs ; done
for i in $(cat Dexter720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter New Blood/Season 1 [x265 10bit WEBRip PSA]/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Dexter1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Dexter New Blood/Season 1 [x265 10bit WEBRip PSA]/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Superman720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [720p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Superman1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Superman and Lois/Season 2 [1080p x265 10bit WEBRip PSA]/"  --drive-server-side-across-configs ; done
for i in $(cat Snowpiercer720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Snowpiercer/Season 1-2-3 [x265 10bit PSA]/Season 3/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Snowpiercer1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Snowpiercer/Season 1-2-3 [x265 10bit PSA]/Season 3/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Father720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/How I Met Your Father/Season 1 [720-1080 x265 10bit PSA]/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Father1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/How I Met Your Father/Season 1 [720-1080 x265 10bit PSA]/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Eve720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Killing Eve/Season 4/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Eve1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Killing Eve/Season 4/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Peaky720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peaky Blinders/Season 6/720p x265 PSA/"  --drive-server-side-across-configs ; done
for i in $(cat Peaky1080x | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peaky Blinders/Season 6/1080p x265 10bit PSA/"  --drive-server-side-across-configs ; done
for i in $(cat Peaky1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peaky Blinders/Season 6/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Peaky2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Peaky Blinders/Season 6/4K 2160p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo720 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/720p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo1080 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/1080p/"  --drive-server-side-across-configs ; done
for i in $(cat Halo2160 | uniq) ; do rclone --config rclone.conf move -P D1:Archive/Unsorted/"$i" D1:"Archive/Series/Halo/2160p/"  --drive-server-side-across-configs ; done

rm Legacies720 Legacies1080 Dexter720 Dexter1080 Father720 Father1080 Maisel720 Maisel1080 Eve720 Eve1080 Sono subsAttack Halo720 Halo1080 Halo2160
rm Expanse2160 Expanse1080 Expanse720 AttackPSA AttackJudas Superman720 Superman1080 Peaky720 Peaky1080x Peaky1080 Peaky2160

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
