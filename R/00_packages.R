# R/00_packages.R (run interactively the first time)
install.packages(c("tidyverse", "here", "pheatmap", "rmarkdown"))
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install(c("airway", "SummarizedExperiment", "DESeq2",
                       "AnnotationDbi", "org.Hs.eg.db"))

# reproducibility (optional but recommended)
install.packages("renv")
renv::init()          # creates renv/ and renv.lock
# After all packages are installed:
renv::snapshot()      # lock your versions
