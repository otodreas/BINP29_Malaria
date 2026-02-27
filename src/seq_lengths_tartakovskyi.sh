#!/usr/bin/env bash

cd "$(dirname "$0")"

grep "^>" ../data/clean_genomes/Haemoproteus_tartakovskyi_clean.genome | \
    cut -d "=" -f 3 >> ../data/clean_genomes/seq_lens.txt