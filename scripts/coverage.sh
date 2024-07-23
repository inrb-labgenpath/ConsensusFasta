echo -e "Sample\tCoverage" > coverage.tsv

for file in *.fa
do	
	python /data/ivar/scripts/fasta-coverage.py "$file" >> coverage.tsv
done
