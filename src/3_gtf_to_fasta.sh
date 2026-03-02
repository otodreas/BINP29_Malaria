#!/usr/bin/env bash

cd "$(dirname "$0")"

# Create FASTA file from GTF
./gffParse.pl \
    -i ../data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome \
    -g ../data/2_gene_predict_gtf/genemark.gtf \
    -b ../data/3_gene_predict_fasta/genemark \
    -p -c
