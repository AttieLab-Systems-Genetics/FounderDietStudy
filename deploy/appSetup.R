
# Pull dataset names from `source.csv`
dataset <- read.csv(file.path("data/RawData", "source.csv"))
dataset <- dataset[dataset$longname != "", c(1,3)]
rownames(dataset) <- NULL
datasets <- dataset$longname
names(datasets) <- dataset$shortname

# Make sure datasets are being used here.
traitSignal <- unique(readRDS(file.path("deploy", "traitSignal.rds"))$dataset)
datasets <- datasets[names(datasets) %in% traitSignal]

saveRDS(datasets, "deploy/datasets.rds")

rmarkdown::render("deploy/help.Rmd", rmarkdown::md_document())

