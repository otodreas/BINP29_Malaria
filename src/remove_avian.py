#!/usr/bin/env python3

import sys

contigs_fp, fasta_fp, filt_fasta_fp = sys.argv[1:4]

with open(contigs_fp) as contigs:
    contigs_key = {line.strip() for line in contigs}

with open(fasta_fp) as fasta, open(filt_fasta_fp, "a") as fasta_filt:
    header = True
    write_seq = False

    for line in fasta:
        if header:
            contig = line.split()[2]
            contig = contig[contig.index("=") + 1 :]
            if contig not in contigs_key:
                fasta_filt.write(line.strip() + "\n")
                write_seq = True
        elif write_seq:
            fasta_filt.write(line.strip() + "\n")
            write_seq = False

        header = not header
