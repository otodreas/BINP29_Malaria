#!/usr/bin/env bash

# Usage: ./3_gtf_to_fasta.sh genome.fasta predictions.gtf out_dir

# Create FASTA file from GTF
./"$(dirname "$0")"/gffParse.pl -i "$1" -g "$2" -b "$3" -p -c
