# BINP29_Malaria
Malaria case study for BINP29 at Lund University

## Workflow

Run all steps from root

1. Build environment TODO: generate requirements
2. Copy raw genomes into `data/raw_genomes/`
3. Make all scripts executable

```sh
chmod +x src/*
```

4. Clean *H. tartakovskyi* genome

```sh
./src/clean_tartakovskyi.sh
```

5. Get *H. tartakovskyi* sequence length stats

```sh
./src/seq_lengths_tartakovskyi.sh | ./src/seq_lengths_stats.py
```