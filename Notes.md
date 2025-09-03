installed sra tool kit: conda install bioconda::sra-tools
prefetch SRR25630301
prefetch SRR25630377
fasterq-dump SRR25630301.sra
fasterq-dump SRR25630377.sra

Species_sample_tissue_age/size_sample#_readnumber.fastq.gz.
Crh_rhy52_EO_6cm_1.fastq.gz
Crh_rhy52_EO_6cm_1_htseqcounts_[forORrev]stranded.txt
CcoxCrh_comrhy114_EO_adult_2.fastq.gz
CcoxCrh_comrhy114_EO_adult_2_htseqcounts_[forORrev]stranded.txt

<img width="253" height="57" alt="Screenshot 2025-09-03 at 2 36 26 PM" src="https://github.com/user-attachments/assets/f2e4bf29-c24a-4449-891e-713817ed6f4e" />
<img width="917" height="659" alt="Screenshot 2025-09-03 at 2 35 55 PM" src="https://github.com/user-attachments/assets/99bc33b2-d9f9-4a2a-afbd-5236b7811102" />
<img width="504" height="377" alt="Screenshot 2025-09-03 at 3 13 30 PM" src="https://github.com/user-attachments/assets/1dbd7688-4224-46e5-b13b-a2d521fd1e2e" />
<img width="873" height="652" alt="Screenshot 2025-09-03 at 2 36 14 PM" src="https://github.com/user-attachments/assets/8c3c70da-d02b-4007-b983-4658d4a6576c" />

<img width="260" height="63" alt="Screenshot 2025-09-03 at 2 39 06 PM" src="https://github.com/user-attachments/assets/ab2a632c-551b-480b-a7a6-7f213c0a9f2f" />
<img width="511" height="381" alt="Screenshot 2025-09-03 at 3 21 08 PM" src="https://github.com/user-attachments/assets/928d4bc2-b3a2-4a27-a0e6-9b39f1399963" />
<img width="883" height="659" alt="Screenshot 2025-09-03 at 2 38 54 PM" src="https://github.com/user-attachments/assets/5ab87c8e-9fcc-4cc4-9b91-dcf947ed19dc" />
<img width="880" height="670" alt="Screenshot 2025-09-03 at 2 39 23 PM" src="https://github.com/user-attachments/assets/ff23cf9d-d1e7-4efb-8204-bd9fa78b6f44" />

<img width="341" height="67" alt="Screenshot 2025-09-03 at 3 04 25 PM" src="https://github.com/user-attachments/assets/c26e3bc6-1c6a-4896-be6b-74270aa1d2d8" />
<img width="502" height="375" alt="Screenshot 2025-09-03 at 3 29 09 PM" src="https://github.com/user-attachments/assets/dc26f08a-40c1-4fe3-9377-983adcaf126d" />
<img width="875" height="661" alt="Screenshot 2025-09-03 at 3 04 37 PM" src="https://github.com/user-attachments/assets/88b3b1e1-987e-451a-969f-8f4d427046a8" />
<img width="905" height="654" alt="Screenshot 2025-09-03 at 3 04 46 PM" src="https://github.com/user-attachments/assets/874f4c1e-8919-4e64-998d-8bcea5186269" />

<img width="354" height="62" alt="Screenshot 2025-09-03 at 3 05 02 PM" src="https://github.com/user-attachments/assets/d2b3195a-216e-4cc4-b1ba-4875fa805637" />
<img width="494" height="378" alt="Screenshot 2025-09-03 at 3 34 37 PM" src="https://github.com/user-attachments/assets/c915c7f2-8fda-49b2-9c3d-40b88e036f59" />
<img width="858" height="655" alt="Screenshot 2025-09-03 at 3 05 14 PM" src="https://github.com/user-attachments/assets/f3bf36e7-1089-43e1-88b1-3330e5664b2b" />
<img width="882" height="651" alt="Screenshot 2025-09-03 at 3 05 25 PM" src="https://github.com/user-attachments/assets/f3caca4c-6b87-4643-b8a9-d7b4a17e95cb" />


cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -o Crh_rhy52_EO_6cm_1_trimmed.fastq.gz Crh_rhy52_EO_6cm_1.fastq.gz
What proportion of reads (both R1 and R2) were trimmed?

=== Summary ===

Total reads processed:              40,310,122
Reads with adapters:                 2,168,281 (5.4%)
Reads written (passing filters):    40,310,122 (100.0%)

Total basepairs processed: 6,046,518,300 bp
Total written (filtered):  6,019,425,557 bp (99.6%)

cutadapt -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o Crh_rhy52_EO_6cm_2_trimmed.fastq.gz Crh_rhy52_EO_6cm_2.fastq.gz

=== Summary ===

Total reads processed:              40,310,122
Reads with adapters:                 1,819,245 (4.5%)
Reads written (passing filters):    40,310,122 (100.0%)

Total basepairs processed: 6,046,518,300 bp
Total written (filtered):  6,037,338,120 bp (99.8%)


