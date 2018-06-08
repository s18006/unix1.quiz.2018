#!/bin/bash

sudo find ~ -type f | xargs sudo du -b | sort -n | head -n 5
