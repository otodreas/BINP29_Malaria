#!/usr/bin/env bash

cd "$(dirname "$0")"

grep "^>" ../../data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome | \
    cut -d "=" -f 3
