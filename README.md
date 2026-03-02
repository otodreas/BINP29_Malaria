# BINP29_Malaria
Malaria case study for BINP29 at Lund University

## Workflow

Run all steps from root

1. Build environment TODO: generate requirements IF NEEDED, otherwise delete environment
2. Create data directories

```sh
mkdir -p data/{0_raw_genomes,1_clean_genomes,2_gene_predict,3_avian_removed}
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

6. Predict genes for *H. tartakovskyi* using `gmes_petap.pl`

```sh
./src/2_predict_tartakovskyi.sh
```

7. Remove scaffolds that have genes of avian origin

```sh
./src/3_remove_avian_scaffolds.sh
```
