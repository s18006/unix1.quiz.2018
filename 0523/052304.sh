#!/bin/bash

sudo find /etc -type f | xargs sudo du -b | sort -rn | head -n 5

