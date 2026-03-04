#### Part I. Generate a workflow for DGE analysis.  

Write generic scripts for:

+ Accessing the required data, in this case from the GEO database
+ Assessing the quality of the fastq files
+ Indexing the genome
+ Aligning the reads
+ Generating a counts table, metadata table, and DESeq2 object
+ Generating a PCA plot
+ Performing DGE analysis on the DESeq2 object
+ Adjusting the p-value to narrow down the hits
+ Assigning gene symbols to Ensembl gene IDs
+ Generating a heatmap and saving it

Some tasks require batch scripts, and others require R scripts. Think about how to combine your scripts into the most efficient workflow. The goal is to be able to apply the scripts to any dataset with only minor tweaks. 
The datasets you'll work with are from the GEO database "airway" dataset (GSE52778).

#### Part II. Test the workflow on the "dexamethasone" experiment. 

Use the scripts you wrote in Part I to determine differentially expressed genes between an untreated control sample from each of the four cell lines and a sample from each cell line treated with dexamethasone.


#### Part III. Refine the workflow on the "albuterol" experiment.

Go through the analysis again, but this time set it up to determine differentially expressed genes between an untreated control sample from each of the four cell lines and a sample from each cell line treated with the beta-agonist albuterol.

#### Submission

+ README file
+ All scripts, clearly commented and written for generic use (IOW, with minimal editing can be used on other input)
+ All data files used as INPUT
+ All OUTPUT files
+ PCA plot for each of the two analyses
+ Heatmaps of top 50 hits for each analysis (showing **gene symbols**, not ENS gene IDs)
+ Best practices in file naming and organization of your material into subdirectories

