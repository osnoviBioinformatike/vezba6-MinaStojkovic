# komande.md

*Ve�ba 6*

## >>> README.md

### 1.5 - 1.9 - uneti komande

```bash
1. conda activate kleborate
4. cd Documents/vezba6-MinaStojkovic/
5. tar -xzf za_vezbe_Klebsiella_sekvence.tar.gz 
6.cd za_vezbe_Klebsiella_sekvence
7. mkdir -p ../data/{genomes,annotations}
8.mv *.fna ../data/genomes ; mv *.gff ../data/annotations
9. cd .. && mkdir results
```

---

## >>> klebsiella_demonstracija_prosirena.md

### 4.1 - uneti *output* komandi, a ne komande

```bash
# Upi�ite brojeve kolona koje izdvajate:
1,52-55,60-63,67,71,73
# Prika�ite izdvojene kolone za Strain, Virulence score, iucA, iroB, rmpA i rmpA2:
strain         iucA  iroB  rmpA     virulence_score  rmpA2         resistance_score
GCF_017743115  1     1     2        4                rmpA2_5-54%   0
GCF_017743135  9     6     11       4                -             0
GCF_017815715  1     1     2        3                rmpA2_5-54%   0
GCF_021057265  1     -     27       4                rmpA2_6*-47%  1
GCF_021442005  1     -     40*-47%  4                rmpA2_3-47%   2
GCF_902723695  1     1     2        4                rmpA2_2*-54%  2
GCF_902723705  1     1     2        4                rmpA2_4*-34%  1
GCF_902827215  2     4     82-19%   5                -             0
```

### 4.4 - uneti *output* komandi, a ne komande

```bash
# Upi�ite brojeve kolona koje izdvajate: 
1,71,98
# Prika�ite izdvojene kolone za Strain, Virulence score i Resistance score
strain         virulence_score  resistance_score
GCF_017743115  4                0
GCF_017743135  4                0
GCF_017815715  3                0
GCF_021057265  4                1
GCF_021442005  4                2
GCF_902723695  4                2
GCF_902723705  4                1
GCF_902827215  5                0
# Odaberite 1 soj koji je samo hipervirulentan (+ ima rmpA2):
GCF_017743115
# Upi�ite informaciju o njegovoj virulentnosti/rezistentnosti sa NCBI/Genome:
hypervirulent Klebsiella pneumoniae
# Odaberite 1 soj koji je hipervirulentan i multirezistentan (+ ima iroB):
GCF_902723695
# Upi�ite informaciju o njegovoj virulentnosti/rezistentnosti sa NCBI/Genome:
Carbapenem resistant and hypervirulent Klebsiella pneumoniae kpn154
```

### 5.3 - uneti komande

```bash
for file in *.gff; do
 echo "=== $file ==="
 grep -Ei "peg-344|iroB|iucA|rmpA|rmpA2" "$file" || echo " (ниједан маркер није пронађен)"
done
```

### 2 - uneti komande

```bash
2.2 mkdir klebsiella_genome && cd klebsiella_genome/
2.3 wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/021/057/265/GCF_021057265.1_ASM2105726v1/GCF_021057265.1_ASM2105726v1_genomic.fna.gz
# moze ovako jedan po jedan
 wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/021/057/265/GCF_021057265.1_ASM2105726v1/uncompressed_checksums.txt https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/021/057/265/GCF_021057265.1_ASM2105726v1/md5checksums.txt
# moze ovako da se kopira link samo uvek i odvoji se razmakom
BASE_URL="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/021/057/265"
wget "${BASE_URL}/md5checksums.txt"
wget "${BASE_URL}/uncompressed_checksums.txt"
#moze da se napravi ekspanzija (promenljiva) 
2.4 gunzip -k GCF_021057265.1_ASM2105726v1_genomic.fna.gz 
gunzip -k GCF_021057265.1_ASM2105726v1_genomic.gff.gz
2.5 grep "b712f6fbd7a3d16746b162a98c210d1c" md5checksums.txt > genom_compressed.txt
2.6 md5sum GCF_021057265.1_ASM2105726v1_genomic.fna
```

### 3 - uneti komande

```bash
3.1 mkdir genoms anotations
3.2 mv GCF_021057265.1_ASM2105726v1_genomic.gff.gz annotations/
mv GCF_021057265.1_ASM2105726v1_genomic.fna.gz genoms
3.3 cd ..
3.4 tar -czf klebsiella_genome.tar.gz klebsiella_genome/
3.5 tar -tzf klebsiella_genome.tar.gz
```

### 4 - uneti komande i sadrzaj klebsiella_download_archive.sh fajla

```bash
4.1 mkdir scripts && cd scripts
touch klebsiella_download_archive.sh
4.3 #u nano:
!/usr/bin/env bash

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

4.4 chmode +x klebsiella_download_archive.sh 
./
```
