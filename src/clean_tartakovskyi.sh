#!/usr/bin/env bash

cd "$(dirname $0)"

./removeScaffold.py \
    ../data/raw_genomes/Haemoproteus_tartakovskyi.genome \
    38 \
    ../data/clean_genomes/Haemoproteus_tartakovskyi_clean.genome \
    3000