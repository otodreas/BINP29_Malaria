#!/usr/bin/env bash

# Usage: ./2_predict_tartakovskyi.sh genome.fasta out_dir

# TODO: new genemark gtf files look wrong

# # Run gene prediction
# gmes_petap.pl \
#     --ES \
#     --work_dir "$2" \
#     --cores 20 \
#     --min_contig 3000 \
#     --sequence \
#     "$1"

# Reformat gtf
cat "$2"/genemark.gtf | \
    sed "s/ GC=.*\tGeneMark.hmm/\tGeneMark.hmm/" > \
    "$2"/genemark_2.gtf
