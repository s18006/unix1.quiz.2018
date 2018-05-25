#!/bin/bash
cut -d : -f 1,3 /etc/passwd | tr : " " | sort -k 2 | tr " " :
