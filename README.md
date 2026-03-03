# BINP29_Malaria

Malaria case study for BINP29 at Lund University

I am not running a viritual environment but will export a requirements file if the workflow ends up having dependencies.

## Workflow

Run all steps from root

1. Build environment TODO: generate requirements IF NEEDED, otherwise delete environment
2. Create data directories

```sh
mkdir -p data/{0_raw_genomes,1_clean_genomes,2_gene_predict_gtf,3_gene_predict_fasta,4_blast,5_no_avian_scaffolds,6_new_gene_predict}
```

3. Copy raw genomes into `data/0_raw_genomes/`
4. Make all scripts executable

```sh
chmod +x src/*
```

5. Clean *H. tartakovskyi* genome

```sh
./src/1_clean_tartakovskyi.sh
```

6. Predict genes for *H. tartakovskyi* using `gmes_petap.pl` and reformat the `gtf` file

```sh
./src/2_predict_tartakovskyi.sh data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome data/2_gene_predict_gtf
```

7. Create `fasta` sequences from the `gtf` file

```sh
./src/3_gtf_to_fasta.sh data/1_clean_genomes/Haemoproteus_tartakovskyi_clean.genome data/2_gene_predict_gtf/genemark_2.gtf data/3_gene_predict_fasta/genemark_Ht
```

8. Run BLASTX on data

```sh
./src/4_blast.sh
```

9. Remove host scaffolds

```sh
./src/remove_host_scaffolds.sh
```

10. Generate new gene predictions without avian scaffolds

```sh
./src/2_predict_tartakovskyi.sh data/5_no_avian_scaffolds/genemark_Ht_no_avian.fna data/6_new_gene_predict_gtf
./src/3_gtf_to_fasta.sh data/5_no_avian_scaffolds/genemark_Ht_no_avian.fna data/6_new_gene_predict_gtf/genemark_2.gtf data/7_new_gene_predict_fasta/genemark_Ht
```
