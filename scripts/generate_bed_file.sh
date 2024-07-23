bwa mem -k 5 -T 16 db/DRC-2018-MAN-REF.fa db/DRC-2018-MAN-REF_primers.fa | samtools view -b -F 4 > db/DRC-2018-MAN-REF_primers.bam
bedtools bamtobed -i db/DRC-2018-MAN-REF_primers.bam > db/DRC-2018-MAN-REF_primers.bed
