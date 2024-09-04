# Support repository for Founder Diet Study

See [data/ReadMe.md](https://github.com/byandell/FounderDietStudy/blob/main/data/ReadMe.md) for information on raw data.

See [https://data-viz.it.wisc.edu/FounderDietStudy/](https://data-viz.it.wisc.edu/FounderDietStudy/) app (limited access) for interactive data tool.
More information found on [Shared Google Drive](https://drive.google.com/drive/u/1/folders/0AGugqlk2Del8Uk9PVA) (limited invitations).

# Interactive App

- [https://data-viz.it.wisc.edu/FounderDietStudy/](https://data-viz.it.wisc.edu/FounderDietStudy/): interactive app on RStudio Connect
- [app.R](https://github.com/byandell/FounderDietStudy/blob/main/app.R): code for app
- [foundrDietStudy.R](https://github.com/byandell/FounderDietStudy/blob/main/foundrDietStudy.R): support code for app
- [https://github.com/byandell/foundr](https://github.com/byandell/foundr): support package for app

# Support Rmarkdown Document

- [FounderDietStudy_Data.Rmd](https://github.com/byandell/FounderDietStudy/blob/main/FounderDietStudy_Data.Rmd): Harmonize raw data for further analysis.
- [FounderDietStudy.Rmd](https://github.com/byandell/FounderDietStudy/blob/main/FounderDietStudy.Rmd): initial study of founder diet study 
- [FounderDietStudy_cor.Rmd](https://github.com/byandell/FounderDietStudy/blob/main/FounderDietStudy_cor.Rmd): correlation study across founders
- [FounderDietExplore.Rmd](https://github.com/byandell/FounderDietStudy/blob/main/FounderDietExplore.Rmd)

# Archived Data

Data are archived in [ResearchDrive](https://kb.wisc.edu/researchdata/internal/page.php?id=93998#connect) with access via Attie Lab. They include the following:

- RawData
  + Data collated by Mark Keller. Much copied from [Founder diet data Google Drive](https://drive.google.com/drive/u/1/folders/1v2xyz0s0ELYkEwMdEOMjAvLVWJA1OkGG).
- HarmonizedData
  + Beginnings of harmonized data developed by Brian Yandell.

Brian S. Yandell <brian.yandell@wisc.edu>
30 January 2023

4 Sep 2024

Founder apps are in transition to new `foundr/foundrShiny` configuration.
As of today, all 3 default connect apps (`/Founder*Study`) have the new
configuration, using the `foundrBase` branch. 
Apps `/OldFounder*Study` use the `v1.4` branch of `foundr` package,
which is frozen.
Apps `/OrigFounder*Study` use the `main` branch of `foundr` package,
and will break when the `foundrBase` branch is merged back into `main`.

## FounderLiverDietStudy
- <https://connect.doit.wisc.edu/FounderLiverDietStudy/>
  + `./deployLiverNew` 1.5.0
  + connect name `deployLiverNew`
  + uses `foundr` branch "foundrBase"
- <https://connect.doit.wisc.edu/OldFounderLiverDietStudy/>
  + `./deployLiver` 1.4.1 static
  + connect name `deployLiver`
  + old version
  + uses `foundr` branch v1.4 
- <https://connect.doit.wisc.edu/OrigFounderLiverDietStudy/>
  + `./deployLiver` 1.4.1 static
  + connect name `deployLiver`
  + older version that will die when "foundrBase" is merged
- <https://connect.doit.wisc.edu/WorkFounderLiverDietStudy/>
  + <https://workbench.doit.wisc.edu> directory `./data/deployLiver`
  + named `Founder Diet Study`
  + workbench name `shinyApp_Liver`
  + has liver data but is somehow messed up
  + uses `foundrShiny` but `foundr` v1.4
  
## FounderDietStudy
- <https://connect.doit.wisc.edu/FounderDietStudy/>
  + `./deployNew` 1.5.0
  + connect name `deployNew`
  + uses `foundr` branch "foundrBase"
- <https://connect.doit.wisc.edu/OldFounderDietStudy/>
  + `./deploy` 1.4.1 static
  + connect name `deploy`
  + old version
  + uses `foundr` branch v1.4 
- <https://connect.doit.wisc.edu/OrigFounderDietStudy/>
  + `./deploy` 1.4.1 static
  + connect name `deploy`
  + older version that will die when "foundrBase" is merged
  
## FounderCalciumStudy
- <https://connect.doit.wisc.edu/FounderCalciumStudy/>
  + `./deployCalcium` 1.5.0
  + connect name `deployCalcium`
  + uses `foundr` branch "foundrBase"
- <https://connect.doit.wisc.edu/OldFounderCalciumStudy/>
  + `./deployCalcium` 1.4.1
  + connect name `deployCalcium`
  + older version that will die when "foundrBase" is merged


