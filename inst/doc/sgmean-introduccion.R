## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----example------------------------------------------------------------------
library(sgmean)
x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 200)
result_r  <- mean(x, trim = 0.05)
result_sg <- sgmean(x, trim = 0.05)
cat("R base  (trim=0.05):", result_r,  "
")
cat("sgmean  (trim=0.05):", result_sg, "
")
cat("Difference:         ", abs(result_r - result_sg), "
")

## ----comparison---------------------------------------------------------------
x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 200)
cat("trim=0.10 | R base:", mean(x, trim=0.10), "| sgmean:", sgmean(x, trim=0.10), "
")
cat("trim=0.05 | R base:", mean(x, trim=0.05), "| sgmean:", sgmean(x, trim=0.05), "
")
cat("trim=0.15 | R base:", mean(x, trim=0.15), "| sgmean:", sgmean(x, trim=0.15), "
")

