#!/bin/bash

touch p p1440
rclone lsf D1:Archive/Unsorted/ | grep 1440p.mp4 >> p1440
for i in $(cat p1440 | uniq); do rclone copy D1:Archive/Unsorted/"$i" D6:Folder/PH/2K --drive-server-side-across-configs; done
for i in $(cat p1440 | uniq); do rclone delete D1:Archive/Unsorted/"$i" ; done

rclone lsf D1:Archive/Unsorted/ | grep XXX >> p
rclone lsf D1:Archive/Unsorted/ | grep PRT >> p
for i in $(cat p | uniq); do rclone copy D1:Archive/Unsorted/"$i" D6:Folder/PH/premium --drive-server-side-across-configs; done
for i in $(cat p | uniq); do rclone delete D1:Archive/Unsorted/"$i" ; done
rm p p1440


rclone sync  D1:Archive D2:Archive --drive-server-side-across-configs --checksum
rclone sync  D1:Archive D3:Archive --drive-server-side-across-configs --checksum
rclone sync  D1:Archive D4:Archive --drive-server-side-across-configs --checksum
rclone sync  D1:Archive D5:Archive --drive-server-side-across-configs --checksum
#rclone sync  D1:Archive D6:Archive --drive-server-side-across-configs
rclone sync  D6:Folder D2:Folder --drive-server-side-across-configs --checksum
rclone sync  D6:Folder D3:Folder --drive-server-side-across-configs --checksum
rclone sync  D6:Folder D4:Folder --drive-server-side-across-configs --checksum
rclone sync  D6:Folder D5:Folder --drive-server-side-across-configs --checksum

date
