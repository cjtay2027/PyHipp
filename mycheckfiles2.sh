#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-m54xlarge-1.10.out <=="
head -n 1 rplpl*.out

echo ""

echo "==> rplspl-slurm.queue1-dy-m54xlarge-1.11.out <=="
head -n 1 rplspl*.out

echo "End Times"
echo "==> rplpl-slurm.queue1-dy-m54xlarge-1.10.out <=="
tail -n 5 rplpl*.out
echo ""
echo "==> rplspl-slurm.queue1-dy-m54xlarge-1.11.out <=="
tail -n 5 rplspl*.out
