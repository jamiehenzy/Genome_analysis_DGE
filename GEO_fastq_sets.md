### Introduction to GEO datasets (https://guides.lib.berkeley.edu/c.php?g=403317&p=6553361)
Tons of experiments have deposited their sequencing results and even counts tables into the GEO database. When designing your project, consider using a dataset from this resource.
How to download and extract fastq files from GEO. We'll use the "airway" dataset that we've worked with before. However, instead of getting the fastq files from the dexamethasone-treated cells, let's get the files for the albuterol-treated cells. 
Go to the record for the study: GSE52778. Note the description, platform, and samples data. 
1. What was the purpose of the study?
2. What sequencing platform did they use?
3. Are the reads single-end or paired-end?
4. How many samples are there, and how many of these are controls?
At the bottom of the page are files you can download, and a link to the SRA Run Selector, which gives information on each sample so that you can retrieve just what you want.
After clicking SRA Run Selector to open it, you'll see a small upper table and a lower table with a row for every sample. Check the boxes next to the samples you want. On the upper table, toggle the button next to "Selected", the download the list of accession numbers. You can copy and paste the numbers from the list into a file in Explorer (use nano to open a new file) and name it something like acc_list.txt.
Make a directory for your work on Explorer. You'll use the program sratoolkit, available as a module, to retrieve the fastq files from the dataset. SRA stands for "sequence read archive". For each sample you'll use two commands:
prefetch SRRxxxxxx (supply number)
fasterq-dump --split-files SRRxxxxxxx
5. What is the purpose of "--split-files"?
Write a SBATCH script to perform the operation on all the files in your dataset. The job will take some minutes to run.


6. SBATCH script









After running, you should see a set of files starting with your SRR numbers and ending in fastq. Use a unix command to count the lines in all files. 
7. UNIX command:
Each pair should have the same number of reads, or something is wrong. If a file pair does NOT have the same number of reads, do not use it in further analyses.




<img width="468" height="635" alt="image" src="https://github.com/user-attachments/assets/715786cf-5f85-451a-8a5c-f81db3f62987" />
