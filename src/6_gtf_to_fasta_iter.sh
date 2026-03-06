#!/bin/bash

declare -A pairs=(
    ["cynomolgi.gtf"]="Plasmodium_cynomolgi.genome"
    ["knowlesi.gtf"]="Plasmodium_knowlesi.genome"
    ["P_berghei.gtf"]="Plasmodium_berghei.genome"
    ["Pfalciparum.gtf"]="Plasmodium_faciparum.genome"
    ["Plasmodium_yoelii.gtf"]="Plasmodium_yoelii.genome"
    ["Tg.gff"]="Toxoplasma_gondii.genome"
    ["vivax.gtf"]="Plasmodium_vivax.genome"
)

declare -A outnames=(
    ["cynomolgi.gtf"]="Pc"
    ["knowlesi.gtf"]="Pk"
    ["P_berghei.gtf"]="Pb"
    ["Pfalciparum.gtf"]="Pf"
    ["Plasmodium_yoelii.gtf"]="Py"
    ["Tg.gff"]="Tg"
    ["vivax.gtf"]="Pv"
)

BASE="$(dirname "$0")/../data/8_all_fasta"
GTF_DIR="$BASE/gtf"
GENOME_DIR="$BASE/plasmodiumGenomes"
OUT_DIR="$(dirname "$0")/../data/output"

for gtf in "${!pairs[@]}"; do
    genome="${pairs[$gtf]}"
    outname="${outnames[$gtf]}"
    echo "Running: script $GTF_DIR/$gtf $GENOME_DIR/$genome $OUT_DIR/$outname"
    src/gffParse.pl "$GTF_DIR/$gtf" "$GENOME_DIR/$genome" "$OUT_DIR/$outname"
done