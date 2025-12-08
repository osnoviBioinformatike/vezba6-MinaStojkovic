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

```

### 3 - uneti komande

```bash

```

### 4 - uneti komande i sadrzaj klebsiella_download_archive.sh fajla

```bash

```
