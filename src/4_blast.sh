#!/usr/bin/env bash

cd "$(dirname "$0")"/..

# Run BLAST
blastx \
    -query data/3_gene_predict_fasta/genemark_Ht.fna \
    -db SwissProt \
    -out data/4_blast/Ht.blastx \
    -num_threads 20
    