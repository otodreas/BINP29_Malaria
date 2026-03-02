#!/usr/bin/env bash

cd "$(dirname "$0")"/..

# Run BLAST
blastx \
    -query data/3_gene_predict_fasta/genemark_Ht.fna \
    -db SwissProt \
    -out data/4_blast/Ht.blastx \
    -num_threads 20

# # Retrieve the host scaffolds
# ./src/datParser.py \
#     Ht.blastx \
#     data/3_gene_predict_fasta/genemark_Ht.fna \
#     server_data/taxonomy.dat \
#     server_data/uniprot_sprot.dat # >\
#     # data/4_avian_removed/scaffolds.txt