#!/usr/bin/env python3
import re

def mapped_counting(file):
    mapped_count = 0
    unmapped_count = 0
    read_dict = {}

    with open(file, "r") as fh:
        for line in fh:
            if line.startswith("@"):   # skip SAM header lines
                continue
            split_header = line.split("\t")
            read = split_header[0]
            flag = int(split_header[1])

            # skip secondary alignments
            if (flag & 0x100) != 0:
                continue

            # only count each read once
            if read not in read_dict:
                read_dict[read] = None
                if (flag & 0x4) == 0:   # mapped
                    mapped_count += 1
                else:                   # unmapped
                    unmapped_count += 1

    print(f"Mapped reads: {mapped_count}")
    print(f"Unmapped reads: {unmapped_count}")
    print(f"Total unique reads: {mapped_count + unmapped_count}")

    return mapped_count, unmapped_count

file1 = "/projects/bgmp/dansho/bioinfo/Bi623/PS2/SRR25630301/campylomormyrus_aligned.sorted.dedup.sam"
file2 = "/projects/bgmp/dansho/bioinfo/Bi623/PS2/SRR25630377/campylomormyrus_aligned.dedup.sam"
mapped_counting(file1)
mapped_counting(file2)
