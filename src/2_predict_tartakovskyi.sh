#!/usr/bin/env bash

cd "$(dirname "$0")"/../data/2_gene_predict_gtf

# Run gene prediction
gmes_petap.pl \
    --ES \
    --cores 20 \
    --min_contig 3000 \
    --sequence \
    ../../1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome
