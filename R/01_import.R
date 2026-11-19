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

# Data checks ------------------------------------------------------
# Findings (checked 2026-11-19):
# - Years 2000-2025; ~4,500 rows/year from 2013 (system "complete").
# - Pathogens were added over time (big jumps in 2005 and 2012),
#   so long time series aren't possible for all pathogens.
# - United Kingdom reports until 2019 only -> EU-wide totals not
#   comparable across 2019/2020.
# - "R - resistant isolates" and "Total tested isolates" have the
#   same number of rows (18,679) -> can compute % resistant myself.
# - Indicator names can have trailing spaces
#   (e.g. "R - resistant isolates, percentage  ") -> trim before filtering.
