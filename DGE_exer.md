#### Part I. Your goal is to generate scripts for a DGE analysis workflow from start to finish.  Imagine an experiment has been performed, a sequencing library has been prepared, and sequencing has been completed. Your work begins when you are given a set of fastq files. 

Write generic scripts for:

+ Assessing the quality of the fastq files
+ Indexing the genome
+ Aligning the reads
+ Generating a counts table, metadata table, and DESeq2 object
+ Generating a PCA plot
+ Performing DGE analysis on the DESeq2 object
+ Adjusting the p-value to achieve to narrow down the hits
+ Assigning gene names to Ensembl gene IDs
+ Generating a heatmap and saving it

The first three tasks require batch scripts, and the remainder require R scripts. Think about how to combine your scripts into the most efficient workflow. The scripts will be your DGE analysis tool. The goal is to be able to apply the scripts to any dataset with only minor tweaks. 

#### Part II. Put it to the test! Use the scripts you wrote in Part I to perform a complete analysis of DGE in the GSE52778 "airway" dataset using an untreated control sample from each of the four cell lines and a sample from each cell line treated with the beta-agonist (albuterol; we already performed this analysis for the dexamethasone-treated cells).

In addition to the README file, your submission should contain all generic scripts from Part I, clearly commented. Additionally, include these outputs of your analysis for Part II: specific scripts (in other words, the generic scripts but altered to run the actual data), PCA plot, screenshot or copy from RStudio output of number of significant results, heatmap of top 50 significant hits.
