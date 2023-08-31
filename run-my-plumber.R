library(plumber)

root <- pr(paste0(getwd(), "/plumber.R"))
pr_run(root, host = "0.0.0.0", port = 8000)