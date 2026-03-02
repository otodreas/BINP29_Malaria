#!/usr/bin/env bash

cd "$(dirname "$0")"

# Filter scaffolds
./removeScaffold.py \
    ../data/0_raw_genomes/Haemoproteus_tartakovskyi.genome \
    38 \
    ../data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome \
    3000
