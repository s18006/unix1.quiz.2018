#!/bin/bash

sudo find /etc -type f | xargs sudo du -b | sort -n | head -n 5

