################################
## Update of R (cran) version ##
################################

# Author: RipollJ
# Last update: 2018-11-07

# Aim: update your R version wihtout loose of your installed packages


###############################################################################

# Remove your workspace environment before
rm(list = ls())

# To see your installed packages
installed.packages()

# To get your installed packages of your current version
packs <- as.data.frame(installed.packages(.libPaths()[1]),
    stringsAsFactors = FALSE
)

# Save your workspace environment
save.image("workspace.RData")

# Upload your R version

# Load your saved workspace
load("workspace.RData")

# Now re-install your packages
install.packages(packs$Package)

###############################################################################
# END