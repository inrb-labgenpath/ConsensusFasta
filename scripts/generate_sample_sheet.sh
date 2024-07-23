# Naming scheme -> <samplename>_R1.fastq.gz and <samplename>_R2.fastq.gz
echo -e "forward\treverse\tsample\tsample_library" > samples.tsv;
find /home/inrb/Desktop/BaseCalls -name "*.fastq.gz" | sort | xargs -n 2 bash -c 'name=$(basename $0 | cut -f 1 -d _);echo -e "$0\t$1\t${name}\t${name}_L1"' >> samples.tsv
