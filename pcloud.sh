#!/bin/bash
rclone --config rclone.conf sync -P  D6:Folder pcloud:Folder --drive-server-side-across-configs --checksum


