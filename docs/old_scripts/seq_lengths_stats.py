#!/usr/bin/env python3.12

import sys

import numpy as np

lengths = []

for line in sys.stdin:
    line = line.rstrip()
    if line:
        lengths.append(int(line))

lengths = np.array(lengths)

print(f"Min: {np.min(lengths)}")
print(f"Q1: {np.percentile(lengths, 25)}")
print(f"Median: {np.median(lengths)}")
print(f"Q3: {np.percentile(lengths, 75)}")
print(f"Max: {np.max(lengths)}")
