#!/usr/bin/env bash

mkdir klebsiella_genome && cd klebsiella_genome/
BASE_URL="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/021/057/265/GCF_021057265.1_ASM2105726v1/"
wget "${BASE_URL}/md5checksums.txt"
wget "${BASE_URL}/uncompressed_checksums.txt"
wget "${BASE_URL}/GCF_021057265.1_ASM2105726v1_genomic.fna.gz"
wget "${BASE_URL}/GCF_021057265.1_ASM2105726v1_genomic.gff.gz"
gunzip -k GCF_021057265.1_ASM2105726v1_genomic.fna.gz 
gunzip -k GCF_021057265.1_ASM2105726v1_genomic.gff.gz
mkdir genoms anotations
mv GCF_021057265.1_ASM2105726v1_genomic.gff.gz anotations/
mv GCF_021057265.1_ASM2105726v1_genomic.fna.gz genoms
cd ..
tar -czf klebsiella_genome.tar.gz klebsiella_genome/
tar -tzf klebsiella_genome.tar.gz
