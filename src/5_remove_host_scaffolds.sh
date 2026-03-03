#!/usr/bin/env bash

cd "$(dirname "$0")"/..

# Retrieve the host scaffolds
./src/datParser.py \
    data/4_blast/Ht.blastx \
    data/3_gene_predict_fasta/genemark_Ht.fna \
    server_data/taxonomy.dat \
    server_data/uniprot_sprot.dat |\