
# Pull dataset names from `source.csv`
getwd()
dataset <- read.csv(file.path("data/RawData", "source.csv"))
dataset <- dataset[dataset$longname != "", c(1,3)]
rownames(dataset) <- NULL
datasets <- dataset$longname
names(datasets) <- dataset$shortname

# Make sure datasets are being used here.
liverSignal <- unique(readRDS("deployLiver/liverSignal.rds")$dataset)
datasets <- datasets[names(datasets) %in% liverSignal]

saveRDS(datasets, "deployLiver/datasets.rds")

rmarkdown::render("deployLiver/help.Rmd", rmarkdown::md_document())

