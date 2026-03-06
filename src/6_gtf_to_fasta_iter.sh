#!/usr/bin/env bash

# Usage: ./6_gtf_to_fasta_iter.sh

# Declare pairs
declare -A pairs=(
    ["cynomolgi.gtf"]="Plasmodium_cynomolgi.genome"
    ["knowlesi.gtf"]="Plasmodium_knowlesi.genome"
    ["P_berghei.gtf"]="Plasmodium_berghei.genome"
    ["Pfalciparum.gtf"]="Plasmodium_faciparum.genome"
    ["Plasmodium_yoelii.gtf"]="Plasmodium_yoelii.genome"
    ["Tg.gff"]="Toxoplasma_gondii.genome"
    ["vivax.gtf"]="Plasmodium_vivax.genome"
)

# Declare output basenames
declare -A outnames=(
    ["cynomolgi.gtf"]="Pc"
    ["knowlesi.gtf"]="Pk"
    ["P_berghei.gtf"]="Pb"
    ["Pfalciparum.gtf"]="Pf"
    ["Plasmodium_yoelii.gtf"]="Py"
    ["Tg.gff"]="Tg"
    ["vivax.gtf"]="Pv"
)

# Define variables
BASE="$(dirname "$0")/../data/8_all_fasta"
GTF_DIR="$BASE/gtf"
GENOME_DIR="$BASE/plasmodiumGenomes"
OUT_DIR="$(dirname "$0")/../data/9_parsed_genomes"

# Run gffParse.pl iteratively
for gtf in "${!pairs[@]}"; do
    genome="${pairs[$gtf]}"
    outname="${outnames[$gtf]}"
    ./src/gffParse.pl -i "$GTF_DIR/$gtf" -g "$GENOME_DIR/$genome" -b "$OUT_DIR/$outname" -p -c
done