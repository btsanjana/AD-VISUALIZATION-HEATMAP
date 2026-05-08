# Heatmap Analysis (DESeq2)

This repository contains a gene expression heatmap generated from normalized DESeq2 results for the GSE270454 dataset.

## Dataset
GSE270454 (AD vs ASO comparison)

## Objective
To visualize expression patterns of differentially expressed genes across samples and identify clustering patterns between conditions.

## Methodology
- Variance Stabilizing Transformation (VST) was applied to normalize counts.
- Differentially expressed genes were selected based on significance (padj < 0.05).
- Heatmap was generated to visualize expression patterns across samples.

## Output
The heatmap shows clustering of genes and samples, highlighting expression differences between AD and ASO groups.

## Tools Used
- R
- DESeq2
- pheatmap / ggplot2 (depending on your method)
