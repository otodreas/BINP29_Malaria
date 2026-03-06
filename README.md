# BINP29_Malaria

Malaria case study for BINP29 at Lund University

I am not running a viritual environment but will export a requirements file if the workflow ends up having dependencies.

## Requirements
- Server programs
- Python 3.12.10
- proteinortho 6.3.6

## Workflow

Run all steps from root

1. Create data directories

```sh
mkdir -p data/{0_raw_genomes,1_clean_genomes,2_gene_predict_gtf,3_gene_predict_fasta,4_blast,5_no_avian_scaffolds,6_new_gene_predict,7_new_gene_predict_fasta,8_all_fasta,9_parsed_genomes}
```

2. Copy raw genomes into `data/0_raw_genomes/`
3. Make all scripts executable

```sh
chmod +x src/*
```

4. Clean *H. tartakovskyi* genome

```sh
./src/1_clean_tartakovskyi.sh
```

I selected a %GC cutoff of 38%.

5. Predict genes for *H. tartakovskyi* using `gmes_petap.pl` and reformat the `gtf` file

```sh
./src/2_predict_tartakovskyi.sh data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome data/2_gene_predict_gtf
```

6. Create `fasta` sequences from the `gtf` file

```sh
./src/3_gtf_to_fasta.sh data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome data/2_gene_predict_gtf/genemark_2.gtf data/3_gene_predict_fasta/genemark_Ht
```

7. Run BLASTX on data

```sh
./src/4_blast.sh
```

8. Remove host scaffolds

```sh
./src/5_remove_host_scaffolds.sh 
```

9. Generate new gene predictions without avian scaffolds

```sh
./src/2_predict_tartakovskyi.sh data/5_no_avian_scaffolds/Haemoproteus_tartakovskyi_clean_no_avian.genome data/6_new_gene_predict_gtf
```

10. Convert new gene predictions to `fasta` format

```sh
./src/3_gtf_to_fasta.sh data/5_no_avian_scaffolds/Haemoproteus_tartakovskyi_clean_no_avian.genome data/6_new_gene_predict_gtf/genemark_2.gtf data/7_new_gene_predict_fasta/genemark_Ht
```

11. Copy the rest of the genomes and gff/gtf files into `8_all_fasta`

12. Copy `data/7_new_gene_predict_fasta/genemark_Ht.fna` into `data/9_parsed_genomes`

```sh
cp data/7_new_gene_predict_fasta/genemark_Ht.fna data/9_parsed_genomes
```

13. Run `gffParse.pl` on the rest of the genomes

```sh

```

## Answers to questions

1. Yes, I think parasites that use similar hosts will group together in a phylogenetic tree
2. -
3. -
4. -
5. 