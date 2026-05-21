# Long-term trends in climate variables in a cold region

**Author:** Beata Plutova
**Contact:** beata.plutova@utu.fi
**Organization:** DigitalWaters-fi/University of Turku
**Website:** https://github.com/BeataPlutova

## Project Overview
* Problem statement: There is still a need to improve understanding of how climate variables change over time, as they are essential for understanding ecosystem responses.  
* Solution statement: Our research is critical for understanding how climate is changing over time in cold regions and how this can affect ecosystems. 
* Objective: In this study, the aim is to determine monthly, seasonal, and yearly trends in climate variables at Jokioinen weather station in Southwest Finland. 
* Literature review: To analyze data, Mann-Kendall trend test is used.
* Research questions: 1. Are there monthly, seasonal, and yearly trends in climate variables (temperature, snow depth, precipitation)? 2. What is the strength of the trends? 

## Data Sources

Study area is Jokioinen weather station, Southwest Finland. The period of interest is between 1991 - 2022. Climate data are publicly available on Finnish Meteorological Insitute (FMI) webpage.

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
connect with API - Filter to required period (1991 â€“ 2022) - Select parameters (Temperature, Precipitation, Snow depthâ€¦) - Download into file (excel or csv) - Check for the missing values - handle -1 values - Aggregate to monthly/seasonal/annual values
* data - modeling
Mann - Kendall trend analysis - Read monthly/seasonal/yearly data - Apply Mann - Kendall trend analysis - Save data - Visualize data

## Repository Structure

| Folder/File | Description |
|-------------|-------------|
| notebooks/ | SE1â€“SE4 notebooks |
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

![Fig.1:Monthly_MK_trends](figures/Fig.1:Monthly_MK_trends.png)
![Fig.2:Seasonal_MK_trends](figures/Fig.2:Seasonal_MK_trends.png)
![Fig.3:Yearly_MK_trends](figures/Fig.3:Yearly_MK_trends.png)

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
By contributing, you agree that your work will be released under the projectâ€™s license.

## Notes:
Focus on graphically rich, interactive elements to communicate your research to diverse stakeholders.
[Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/markdown-cheatsheet) 
