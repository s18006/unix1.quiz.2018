#!/bin/bash
sed p file1 file2 file3 | sort -u | sed /^A/d
