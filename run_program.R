############## Repo for extracting EucFACE met data for performing 
############## Volatile organic carbon emission simulations
############## Written by Mingkai Jiang (m.jiang@westernsydney.edu.au)


#### clear wk space
rm(list=ls(all=TRUE))

#### Source functions and packages
source("prepare.R")

#### Suppress warning messages
options(warn=-1)

### make lai
lai_variable <- make_lai_variable()

### prepare VOC
prepare_VOC_met_data(laiDF=lai_variable)