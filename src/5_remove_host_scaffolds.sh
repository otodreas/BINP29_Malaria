#!/usr/bin/env bash

cd "$(dirname "$0")"/..

# Retrieve the host scaffolds
./src/datParser.py \
    data/4_blast/Ht.blastx \
    data/3_gene_predict_fasta/genemark_Ht.fna \
    server_data/taxonomy.dat \
    server_data/uniprot_sprot.dat >\
    data/5_no_avian_scaffolds/removed_contigs.txt

# Create new fna file without the removed contigs
touch data/5_no_avian_scaffolds/Haemoproteus_tartakovskyi_clean_no_avian.genome

# Run remove_avian.py
./src/remove_avian.py \
    data/5_no_avian_scaffolds/removed_contigs.txt \
    data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome \
    data/5_no_avian_scaffolds/Haemoproteus_tartakovskyi_clean_no_avian.genome