#!/usr/bin/env bash

cd "$(dirname "$0")"/../data/gene_predict/H_tartak

gmes_petap.pl \
    --ES \
    --cores 20 \
    --sequence \
    ../../clean_genomes/Haemoproteus_tartakovskyi_clean.genome