#!/usr/bin/env bash

# Usage: ./7_run_proteinortho.sh

cd "$(dirname "$0")"/../data/9_parsed_genomes

# Run on all files
nohup ../../src/proteinortho-master/proteinortho6.pl {Ht,Pb,Pc,Pf,Pk,Pv,Py,Tg}.faa &