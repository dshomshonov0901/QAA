# #!/bin/bash 
# /usr/bin/time -v STAR --runMode genomeGenerate \
#      --genomeDir /projects/bgmp/dansho/bioinfo/Bi623/PS2/QAA/campylomormyrus_genome_index \
#      --genomeFastaFiles /projects/bgmp/dansho/bioinfo/Bi623/PS2/QAA/campylomormyrus.fasta \
#      --runThreadN 8 \
#      --sjdbGTFfile /projects/bgmp/dansho/bioinfo/Bi623/PS2/QAA/campylomormyrus.gtf \
#      --genomeSAindexNbases 13

/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn /projects/bgmp/dansho/bioinfo/Bi623/PS2/SRR25630377/CcoxCrh_comrhy114_EO_adult_1_trimmed.paired.fastq.gz /projects/bgmp/dansho/bioinfo/Bi623/PS2/SRR25630377/CcoxCrh_comrhy114_EO_adult_1_trimmed.paired.fastq.gz \
    --genomeDir /projects/bgmp/dansho/bioinfo/Bi623/PS2/QAA/campylomormyrus_genome_index \
    --outFileNamePrefix /projects/bgmp/dansho/bioinfo/Bi623/PS2/SRR25630377/campylomormyrus_aligned
