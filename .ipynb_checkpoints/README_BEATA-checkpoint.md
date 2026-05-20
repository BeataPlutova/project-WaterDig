# The impacts of environmental variables and agricultural practices on nutrients in a cold climate region

**Author:** Beata Plutova
**Contact:** beata.plutova@utu.fi
**Organization:** DigitalWaters-fi/University of Turku
**Website:** https://github.com/BeataPlutova

## Project Overview
* Problem statement: There is still a need to improve understanding of how climate, hydrology, land, and management interact together in influencing nutrient dynamics in cold agricultural regions.  
* Solution statement: Our research is critical for designing sustainable agricultural management practices to mitigate nutrient losses under climate change in cold climate regions. 
* Objective: In this study we aim to determine individual and combined effects of physiography, climate, and agricultural practices on nutrient fractions and ratios in an agricultural  site in Southwest Finland. 
* Literature review: To analyze data, we combine generalized linear models with partitioning methods.
* Research questions: 1. Are nutrient fractions and ratios more strongly affected by the individual or combined effects of environmental variables (physiography, climate) and agricultural practices? 2.Which variables contribute most to this variation? 


## Data Sources

Study area is in Kotkanoja, Jokioinen, Southwest Finland (60°49¢ N, 23°30¢ E), ~100 m above the current sea level. The field is 2 ha in size, divided in four 0.5-ha plots. The period of interest is between 1991 - 2023. imulations. Climate data are publicly available on Finnish Meteorological Insitute (FMI) webpage. Data about agricultural practices and physiography of the study site are not publicly available. They are provided by Natural resource institute of Finland (LUKE). 

### Published Data Sources
| Name | Source | Description | Access Method | data DOI/url | metadata DOI/URL | details | data citation |
|------|--------|-------------|---------------|--------------|------------------|---------|---------------|
|Mean Temperature | FMI |Mean temperature time series from Jokioinen synoptic weather station |Direct download from FMI observations service |https://en.ilmatieteenlaitos.fi/download-observations|https://en.ilmatieteenlaitos.fi/open-data| FMI, Jokioinen weather station climate data
|Mean Precipitaiton | FMI |Mean precipitation time series from Jokioinen synoptic weather station |Direct download from FMI observations service |https://en.ilmatieteenlaitos.fi/download-observations|https://en.ilmatieteenlaitos.fi/open-data|FMI, Jokioinen weather station climate data
|Snow Depth | FMI |Snow depth time series from Jokioinen synoptic weather station |Direct download from FMI observations service |https://en.ilmatieteenlaitos.fi/download-observations|https://en.ilmatieteenlaitos.fi/open-data|FMI, Jokioinen weather station climate data

### Data Access Notes
There is no requirement for user authentication to obtain climate data, other data are not publicly available.

### Inputs folder
Any direct data download links can be pasted into the "datalinks.txt" file in the inputs folder. Specify which dataset links can be accessed via the datalinks.txt folder. Note: this should only be used for PDIs: if the url changes, it will break the reproducibility of your workflow.

Detail any datasets that are in your inputs data folder. Note this is only for data that is too small/trivial to be published: **no files greater than 10 MB can be stored in repository**. Examples might include spatial polygons that have undergone geometry simplification for API searches, text-based keys mapping variable names to integer values, etc.

## Methods Summary

**Model Framework:** Beata Plutova
* data pre-processing
For climate data:
Go to the FMI webpage - Select Jokioinen station - Filter to required period (1991 – 2023) - Select parameters (Temperature, Precipitation, Snow depth…) - Download into file (excel or csv) - Load to the R - Check for the missing values - Aggregate to monthly/seasonal/annual values
For water quality data:
Already all data in excel from LUKE - Load to the R - Check for the missing values - Aggregate to seasonal/annual values
For agricultural practices:
Data from LUKE in excel table/or possible to withdraw from published articles - creating excel/csv - Load to the R - Aggregate to monthly/seasonal/annual values
Overall:
Merging all data into one frame in R - format that utilized values/dates that can be used for statistical modelling


## Repository Structure

| Folder/File | Description |
|-------------|-------------|
| notebooks/ | SE1–SE4 notebooks |
| inputs/ | minimal input data required, note most data should be stored on OGC/FAIR compliant databases and accessed from stable URLs |
| processed_data/ | analysis-ready datasets |
| model_data/ | Saved model outputs, model configuration files, predictions|
| figures/ | Figures, tables, graphs, and data-derivatives (e.g. summary statistics) displayed in manuscript text |
| run_reproducibility.py | Reproducibility wrapper |
| Dockerfile | Reproducible container |
| CITATION.cff | Citation metadata, sourced directly from Zenodo |

## How to Reproduce

### Computational requirements
What operating system, processor type, and processor specifications (RAM, cores, etc).

If GPU processing, specify CUDA version.

### Data access configurations
Describe in detail any access control mechanisms that need to be configured for an individual user to access data (e.g. tokens, cookies, certificates, URL customization). Provide links to documentation.

### Run the code
```bash
pip install -r requirements.txt
python run_reproducibility.py
```
## Results

Display key figures in `/figures` folder, with description:

![Example](figures/example.png)

## Citation
All repositories should be published on a platform providing persistent object identifiers (e.g. Zenodo).

DOI: **DOI_PENDING**

## License

{{ cookiecutter.license }}

## Contribution Guidelines
Contributions that improve the quality, clarity, and reproducibility of this project are welcome.
* Open an issue before making major or result-affecting changes.
* Keep pull requests focused and clearly describe what changed and why.
* Follow existing code style and update documentation as needed.
* Do not modify code or data used to reproduce published results without discussion.
* Ensure workflows remain reproducible (environment, dependencies, random seeds).
* Do not commit large or restricted datasets; respect data licenses.
By contributing, you agree that your work will be released under the project’s license.

## Notes:
Focus on graphically rich, interactive elements to communicate your research to diverse stakeholders.
[Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/markdown-cheatsheet) 
