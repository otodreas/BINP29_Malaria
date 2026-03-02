# Old scripts

This directory contains old scripts that are no longer used. Scripts in this directory should be made executable.

```sh
chmod +x docs/old_scripts
```

The pipeline

```sh
./docs/old_scripts/seq_lengths_tartakovskyi.sh | ./docs/old_scripts/seq_lengths_stats.py
```

gets the stats on the scaffold lengths after cleaning. This is unecessary because the minimum contig length for `gmes_petap.pl` (gene prediction algorithm) is set to the minimum contig length of the cleaned dataset (filter cutoff in `src/removeScaffold.py`) at 3000 bp.
