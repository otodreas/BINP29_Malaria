#!/usr/bin/env bash

cd "$(dirname "$0")"

# Create FASTA file from GTF
gffParse.pl -c \
    ../data/2_gene_predict/genemark.gtf \
    ../data/2_gene_predict/genemark.fasta
