---
title: Phenotype Traits Importer
tags:
  - phenotype
  - importers
description: This is documentation pertaining to import of phenotypic traits into the Chado database.
---

## Phenotypic Traits Importer

### Metadata Preparation
This importer requires the following setup:
- A chado organism record for the genus that these phenotypic traits are associated with. This can be done through the administrative interface by navigating to `Tripal > Content > Add Tripal Content` and clicking on **Organism** under the heading **General**.
- Configure ontology terms for the TripalCultivate Phenotypes module if you haven't done so already. See: [Configure Tripal Cultivate Phenotypes Module](administration/configuration)

### Access
The Germplasm Accessions Importer can be accessed by going to `Administration > Tripal > Data Loaders > Tripal Cultivate: Phenotypic Traits Importer`

### Select Genus
First, select the genus for which these phenotypic traits are being uploaded for by selecting it from the dropdown menu.
If you are wanting to insert the same trait (including its name, methodology and unit) under 2 or more genus, then all genus will need to have a chado organism record created. Then, you will need to import each one in its own file and use the **Genus** dropdown to change the genus between uploads.

### File Format
The file should be formatted as a TSV file with **exactly 6 tab-delimited columns** in the following order:
1. **Trait Name**: The official name of this trait (eg. `Plant Height`)
2. **Trait Description**: A full description of the trait, including why it is useful. This is recommended to be at least one paragraph.
3. **Method Short Name**: A full, unique title for the method (e.g. `Days till 10% of plants/plot have flowers`)
4. **Collection Method**: A full description of how the trait was collected. This should include details such as tools used (eg. a metric or imperial ruler, a colour chart), whether the plant was manually altered in any way (eg. Plant was stretched to measure its height, seed was powdered and measured using particular instruments). This is also recommended to be at least one paragraph.
5. **Unit**: The full name of the unit used (e.g. days, centimeters, scale from 1 - 10).
6. **Type**: One of "Qualitative" or "Quantitative", to indicate whether the trait is qualitative (eg. `Cotyledon Colour`) or quantitative (eg. `Plant Height`).

### File Upload
Once your file has been populated with all of the traits needed, click the `Browse` button in the File Upload table and select the file from your file system. Make sure the name of the file is correct, and select `File Upload`.
<img width="1010" alt="Screenshot 2025-02-14 at 3 52 08 PM" src="https://github.com/user-attachments/assets/72457a9e-d1e1-422e-a023-008518686f8c" />

### Import
Select import once you have uploaded your file. From here, your file will automatically be validated to ensure there are no blank cells, you've chosen one of the two valid types for each trait, and more. You will receive detailed feedback on how to fix any validation errors that occur, and a chance to re-upload the corrected file.
<img width="1122" alt="Screenshot 2025-02-14 at 3 51 33 PM" src="https://github.com/user-attachments/assets/85ccc69b-15f6-4733-a4c0-5531bc020caf" />

Otherwise, you will receive a message indicating upload was a success!
