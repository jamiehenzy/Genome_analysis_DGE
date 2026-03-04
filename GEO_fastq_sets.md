### Introduction to GEO datasets (https://guides.lib.berkeley.edu/c.php?g=403317&p=6553361)

We'll use the "airway" dataset that we've worked with before (GSE52778). We'll need the fastq files from the:
+ Control cells
+ Dexamethasone-treated cells
+ Albuterol-treated cells
  
Go to the record for the study. Note the description, platform, and samples data. 
1. What was the purpose of the study?
2. What sequencing platform did they use?
3. Are the reads single-end or paired-end?
4. How many samples are there, and how many of these are controls?
   
#### Downloading the data

At the bottom of the page are files you can download, and a link to the **SRA Run Selector**, which gives information on each sample so that you can retrieve just what you want.

After clicking SRA Run Selector to open it, you'll see a small upper table and a lower table with a row for every sample. Check the boxes next to the samples you want. On the upper table, toggle the button next to "Selected", the download the list of accession numbers. You can copy and paste the numbers from the list into a file in Explorer (use nano to open a new file) and name it something like acc_list.txt.

Make a directory for your work on Explorer. You'll use the program sratoolkit, available as a module, to retrieve the fastq files from the dataset. SRA stands for "sequence read archive". For each sample you'll use two commands:

```
prefetch SRR<ID#> 
fasterq-dump --split-files SRR<ID#> 
```

After running, you should see a set of files starting with your SRR numbers and ending in fastq. Use a unix command to count the lines in all files. 
Each pair should have the same number of reads, or something is wrong. If a file pair does NOT have the same number of reads, do not use it in further analyses.




