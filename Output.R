# Where R stores packages? Here!
# See: https://stackoverflow.com/questions/2615128/where-does-r-store-packages
.libPaths()

library(glue)

print("Hello, world.")
test <- Sys.getenv("TEST")

paste("TEST = ", test)
