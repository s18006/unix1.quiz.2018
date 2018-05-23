#!/bin/bash
sudo du -b ~/* | sort -n | tac | head -n 5

