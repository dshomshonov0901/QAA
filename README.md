# RNA-seq Quality Assessment
## Overall project tasks:

I processed electric organ and/or skeletal muscle RNA-seq reads for a future differential gene expression analysis. I used existing tools for quality assessment and read trimming, compared quality assessments to those created by my own software, and aligned and counted reads. Additionally, I summarized important information in a high-level report. You should create a cohesive, [well written](https://drive.google.com/drive/u/0/folders/1GorpwubavrvhUtK18PZ7LURXcz0hf0bK) report for your "PI" about what you've learned about/from your data.

### Dataset:

I worked with 2 RNA-seq files from two different electric fish studies (PRJNA1005245 and PRJNA1005244). The methods for the PRJNA1005244 dataset are [published](https://doi.org/10.1093/molbev/msae021) and the methods for the PRJNA1005245 dataset are written in the third chapter of a [thesis](https://canvas.uoregon.edu/courses/266187/files/22059308?module_item_id=5380118). For all steps below, I processed the two libraries separately. SRR assignments are here: ```/projects/bgmp/shared/Bi623/PS2/QAA_data_Assignments.txt```. 

I was responsible for downloading this data from NCBI SRA, dumping into FASTQ files, and zipping those files. Finally, I renamed the files to reflect Species_sample_tissue_age/size_sample#_readnumber.fastq.gz.

## Part 1 – Read quality score distributions

1. Created a new conda environment called `QAA` and install `FastQC`, `cutadapt`, and `Trimmomatic`. Did this in an interactive session, not the login node! Check your installation with:
   - `fastqc --version` (should be 0.12.1)  

2. Using `FastQC` via the command line on Talapas, I produced plots of the per-base quality score distributions for R1 and R2 reads. Also, I produced plots of the per-base N content, and commented on whether or not they are consistent with the quality score plots.

3. I ran the quality score plotting script from my Demultiplexing project. I compared how the `FastQC` quality score distribution plots compared to my own.

4. Commented on the overall data quality of my two libraries. Examined the `FastQC` [documentation](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/) for guidance on interpreting results and planning next steps.

## Part 2 – Adaptor trimming comparison

5.  Install `Cutadapt` and `Trimmomatic`. Check installations with:
    - `cutadapt --version` (should be 5.0)
    - `trimmomatic -version` (should be 0.39)

6. Using `Cutadapt`, I properly trimmed adapter sequences from my assigned files with default settings. What proportion of reads (both R1 and R2) were trimmed?


    - *Sanity check*: Use your Unix skills to search for the adapter sequences in your datasets and confirm the expected sequence orientations. Report the commands you used, the reasoning behind them, and how you confirmed the adapter sequences.
    
7. Use `Trimmomatic` to quality trim your reads. Specify the following, **in this order**:
    - HEADCROP: 8 bases 
    - LEADING: quality of 3
    - TRAILING: quality of 3
    - SLIDING WINDOW: window size of 5 and required quality of 15
    - MINLENGTH: 35 bases

    Be sure to output compressed files and clear out all intermediate files.

8. Plot the trimmed read length distributions for both paired R1 and paired R2 reads (on the same plot - yes, you will have to use Python or R to plot this. See ICA4 from Bi621). You can produce 2 different plots for your 2 different RNA-seq samples. There are a number of ways you could possibly do this. One useful thing your plot should show, for example, is whether R1s are trimmed more extensively than R2s, or vice versa. Comment on whether you expect R1s and R2s to be adapter-trimmed at different rates and why.

9. Bonus - Run `FastQC` on your trimmed data. Comment on differences you observe between the trimmed and untrimmed data. Include any figures needed to support your conclusions.

## Part 3 – Alignment and strand-specificity
10. Install additional software for alignment and counting of RNA-seq reads. In your QAA environment, use conda to install:
    - Star
    - Picard
    - Samtools
    - NumPy
    - Matplotlib
    - HTSeq

11. Download the publicly available *Campylomormyrus compressirostris* genome fasta and gff file from [Dryad](https://datadryad.org/dataset/doi:10.5061/dryad.c59zw3rcj) and generate an alignment database from it. If the download fails, the files are available `/projects/bgmp/shared/Bi623/PS2/campylomormyrus.fasta`, `/projects/bgmp/shared/Bi623/PS2/campylomormyrus.gff`. Align the reads to your *C. compressirostris* database using a splice-aware aligner. Use the settings specified in PS8 from Bi621. 

  > [!IMPORTANT]
  > You will need to use gene models to perform splice-aware alignment, see PS8 from Bi621. You may need to convert the gff file into a gtf file for this to work successfully.
    
12. Remove PCR duplicates using [Picard MarkDuplicates](https://broadinstitute.github.io/picard/command-line-overview.html#MarkDuplicates). You may need to sort your reads with `samtools` before running Picard.
- Use the following for running picard: picard MarkDuplicates INPUT=[FILE] OUTPUT=[FILE] METRICS_FILE=[FILENAME].metrics REMOVE_DUPLICATES=TRUE VALIDATION_STRINGENCY=LENIENT
  
13. Using your script from PS8 in Bi621, report the number of mapped and unmapped reads from each of your 2 sam files post deduplication with picard. Make sure that your script is looking at the bitwise flag to determine if reads are primary or secondary mapping (update/fix your script if necessary).

14. Count deduplicated reads that map to features using `htseq-count`. You should run htseq-count twice: once with `--stranded=yes` and again with `--stranded=reverse`. Use default parameters otherwise. You may need to use the `-i` parameter for this run.

15. Demonstrate convincingly whether or not the data are from "strand-specific" RNA-Seq libraries **and** which `stranded=` parameter should you use for counting your reads for a future differential gene expression analyses. Include any commands/scripts used. Briefly describe your evidence, using quantitative statements (e.g. "I propose that these data are/are not strand-specific, because X% of the reads are y, as opposed to z."). This [kit](https://www.revvity.com/product/nex-rapid-dir-rna-seq-kit-2-0-8rxn-nova-5198-01) was used during library preparation. This [paper](https://academic.oup.com/bfg/article/19/5-6/339/5837822) may provide helpful information.

  > [!TIP]
  > Recall ICA4 from Bi621.

16. BONUS - Turn your commands from part 1 and 2 into a script with a loop going through your two SRA files

##Included are my:
- [ ] lab notebook
- [ ] Talapas batch script/code
- [ ] FastQC plots
- [ ] counts files generated from htseq-count (in a folder would be nice; **only include the counts files that would be used in a future differential RNA-seq analysis and follow the naming conventions from the RNAseq meta data file: YourSubmittedHTSeqCountsFileName column**)
- [ ] pdf report (see below; turn into both Github AND Canvas)
- [ ] and any additional plots, code, or code output

to GitHub.
    
### Pdf report details

- [ ] all plots
- [ ] answers to questions
- [ ] mapped/unmapped read counts from PS8 script (in a nicely formatted table)
- [ ] named `QAA_report.pdf`
