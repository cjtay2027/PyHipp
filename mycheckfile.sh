#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
echo "rs1"
head -n 1 rs1*.out

echo "rs2"
head -n 1 rs2*.out
echo "rs3"
head -n 1 rs3*.out
echo "rs4"
head -n 1 rs4*.out
echo "rpl"
head -n 1 rpl*.out


echo "Time taken (s)"
echo "rs1"
tail -n 5 rs1*.out

echo "rs2"
tail -n 5 rs2*.out
echo "rs3"
tail -n 5 rs3*.out
echo "rs4"
tail -n 5 rs4*.out
echo "rpl"
tail -n 5 rpl*.out

