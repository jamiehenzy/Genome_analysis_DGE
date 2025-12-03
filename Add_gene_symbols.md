# Install org.Hs.eg.db package from Bioconductor
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("org.Hs.eg.db")

# Load libraries
library(BiocManager)
library(org.Hs.eg.db)

# treats first col as row names
counts <- read.csv("counts_data.csv", row.names = 1) 

# Extract ENSG IDs from row names
ensg_ids <- rownames(counts)

# Convert ENSG to gene symbols using org.Hs.eg.db
gene_symbols <- mapIds(org.Hs.eg.db,
                       keys = ensg_ids,
                       column = "SYMBOL",
                       keytype = "ENSEMBL",
                       multiVals = "first")

# Add gene symbols as a new column (counts goes from 8 to 9 variables)
counts$Gene_Symbol <- gene_symbols

# Reorder columns to put Gene_Symbol first
counts <- counts[, c("Gene_Symbol", setdiff(names(counts), "Gene_Symbol"))]

# Optional: Remove rows where gene symbol is NA
counts <- counts[!is.na(counts$Gene_Symbol), ]

# Save the updated table
write.csv(counts, "counts_gene_symb.csv", row.names = TRUE)
