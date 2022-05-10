#!/bin/bash
rclone --config rclone.conf sync  D6:"Folder/PH" pcloud:"Public Folder/PH" --drive-server-side-across-configs --checksum
