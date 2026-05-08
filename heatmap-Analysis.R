# =====================================
# Heatmap Analysis (Top Genes) - DESeq2
# Dataset: GSE270454
# Comparison: AD vs ASO
# =====================================

# Load required library
library(pheatmap)

# -------------------------------
# 1. Select Top 20 Significant Genes
# -------------------------------
topgenes <- rownames(res_AD_ASO)[order(res_AD_ASO$padj)]
topgenes <- topgenes[!is.na(topgenes)]   # remove NA genes
topgenes <- topgenes[1:20]               # keep top 20

# -------------------------------
# 2. Extract Expression Matrix from VST Data
# -------------------------------
mat <- assay(vsd)[topgenes, ]

# Center rows (better visualization)
mat <- mat - rowMeans(mat)

# -------------------------------
# 3. Save Heatmap as PNG
# -------------------------------
png("Heatmap_GSE270454_AD_vs_ASO.png", width = 900, height = 700)

pheatmap(mat,
         annotation_col = coldata,
         fontsize_row = 8,
         main = "Heatmap Top 20 Genes (AD vs ASO)")

dev.off()

# -------------------------------
# 4. Verify output
# -------------------------------
file.info("Heatmap_GSE270454_AD_vs_ASO.png")$size
getwd()

# -------------------------------
# 5. Optional: Extract DEG genes list
# -------------------------------
deg_genes <- rownames(sig_AD_ASO)
deg_genes
