#!/bin/bash


sudo find $1 -type f | sudo xargs du -b | sort -rn | head -5
