#!/bin/bash

SECONDS=0

# change to working directory

# download genome

# download gtf file

# download fastq files

# run fastqc

# run trimmomatic to trim reads with poor quality

# use STAR program to index genome

# align reads using STAR

# run featureCounts in subread program (available as env in shared folder)

duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
