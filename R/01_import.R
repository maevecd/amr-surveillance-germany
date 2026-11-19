# ------------------------------------------------------------------
# 01_import.R
# Purpose: Read the raw ECDC EARS-Net export and check its structure
# Input:   data-raw/ecdc_atlas_amr_accessed-2026-11-19.csv
#          (source details: data-raw/README.md)
# Author:  Maeve Kathryn Geiger
# Created: 2026-11-19
# ------------------------------------------------------------------

# Packages ---------------------------------------------------------
# Install once in the Console, not in the script:
# install.packages("tidyverse")
library(tidyverse)

# Read data --------------------------------------------------------
# ECDC uses "-" for missing values (1,181 rows), so treat it as NA.
# Without this, NumValue is read as text instead of numbers.
ears <- read_csv(
  "data-raw/ecdc_atlas_amr_accessed-2026-11-19.csv",
  na = c("", "NA", "-")
)

# First look -------------------------------------------------------
glimpse(ears)   # 94,867 rows, 9 columns; NumValue should be <dbl>

# What's in the data?
count(ears, Indicator, Unit)   # which measures exist
count(ears, Time)              # which years
count(ears, RegionName)        # which countries