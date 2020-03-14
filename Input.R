test <- Sys.getenv("TEST")
test2 <- Sys.getenv("TEST2")
print(test)

# Works with `> TEST2=2 Rscript Input.R`
print(test2)


options <- commandArgs(trailingOnly = TRUE)

# Works with `> Rscript Input.R test me well`
print(options)