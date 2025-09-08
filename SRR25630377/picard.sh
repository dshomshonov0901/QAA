#!/bin/bash
picard AddOrReplaceReadGroups \
    I=campylomormyrus_aligned.bam \
    O=campylomormyrus_aligned.RG.bam \
    RGID=1 \
    RGLB=lib1 \
    RGPL=ILLUMINA \
    RGPU=unit1 \
    RGSM=campylomormyrus

picard MarkDuplicates \
    INPUT=campylomormyrus_aligned.RG.bam \
    OUTPUT=campylomormyrus_aligned.dedup.bam \
    METRICS_FILE=campylomormyrus_aligned.duplication.metrics \
    REMOVE_DUPLICATES=true \
    VALIDATION_STRINGENCY=LENIENT
