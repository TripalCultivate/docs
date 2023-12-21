---
title: Open Science Phenotype Share Importer
tags:
  - phenotype
  - importers
description: This is documentation pertaining to import of shareable phenotypic data into the Chado database.
---
## Analyzed Phenotypes 
The Open Science Phenotypic Data can be accessed by going to "Administration > Tripal > Data Loaders > Tripal Cultivate: Open Science Phenotypic Data"

### Select Project/Experiment
First, select the name of a project or an experiment you wish to upload from the dropdown.
### Select Genus
Second, select the genus of the accessions in the file you wish to upload by selecting it from the dropdown menu. All accessions in one file must belong to the same genus and match this selection. Regardless, it is not recommended to maintain germplasm data across multiple genus within the same file, as assigned names can be re-used across genus and cause confusion during curation.
### File Format
The file should be formatted as a TSV file with up to 10 columns in the following order:
1. **Trait Name**: The full name of the trait as you would like it to appear on a trait page. This should not be abbreviated (e.g. Days till one open flower).
2. **Method Name**: A short (<4 words) name describing the method. This should uniquely identify the method while being very succinct (e.g. 10% Plot at R1).
3. **Unit**: The unit the trait was measured with. In the case of a scale this column should defined the scale. (e.g. days)
4. **Germplasm Accession**: The stock.uniquename for the germplasm whose phenotype was measured. (e.g. ID:1234)
5. **Germplasm Name**: The stock.name for the germplasm whose phenotype was measured. (e.g. Variety ABC)
6. **Year**: The 4-digit year in which the measurement was taken. (e.g. 2020)
7. **Location**: The full name of the location either using “location name, country” or GPS coordinates (e.g. Saskatoon, Canada)
8. **Replicate**: The number for the replicate the current measurement is in. (e.g. 3)
9. **Value**: The measured phenotypic value. (e.g. 34)
10. **Data Collector**: The name of the person or organization which measured the phenotype.
