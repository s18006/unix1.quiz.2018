#!/bin/bash

sudo find ~ -type f | xargs sudo du -b | sort -rn | head -n 5
