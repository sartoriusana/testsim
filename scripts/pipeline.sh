#Create directory to store files
mkdir -p res/genome

#Download genome
wget -O res/genome/ecoli.fasta.gz ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz

#Descomprimir file
gunzip res/genome/ecoli.fasta.gz

#Indexing code goes here

echo "Running STAR index..."
    mkdir -p res/genome/star_index
    STAR --runThreadN 4 --runMode genomeGenerate --genomeDir res/genome/star_index/ --genomeFastaFiles res/genome/ecoli.fasta --genomeSAindexNbases 9



for $sampleid in $(get sample ids)
do

	#call analyse_sample for each sampleid
done
