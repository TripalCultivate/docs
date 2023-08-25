---
title: Germplasm Data
tags:
  - germplasm
description: This is documentation pertaining to curation, file upload and management of germplasm data within TripalCultivate.
---
# Germplasm Data

## Germplasm Accessions
The Germplasm Accessions Importer can be accessed by going to "Administration > Tripal > Data Loaders > Tripal Cultivate: Germplasm Accessions"

### Select Genus
First, select the genus of the accessions in the fileyou wish to upload by selecting it from dropdown menu. All accessions in one file must belong to the same genus and match this selection. It is not recommended to maintain germplasm data across multiple genus within the same file, as assigned names can be re-used across genus and cause confusion during curation.

### File Format
The file should be formatted as a TSV or TXT file with up to 12 columns in the following order:
    1. Germplasm Name: Name of this germplasm accession.
    2. External Database: The institution who assigned the following accession.
    3. Accession Number: A unique identifier for the accession.
    4. Germplasm Species: The species of the accession.
    5. Germplasm Subtaxa: Subtaxon can be used to store any additional taxonomic identifier.
    6. Institute Code: The code for the Institute that has bred the material.
    7. Institute Name: The name of the Institute that has bred the material.
    8. Country of Origin Code: 3-letter ISO 3166-1 code of the country in which the sample was originally.
    9. Biological Status of Accession: The 3 digit code representing the biological status of the accession.
    10. Breeding Method: The unique identifier for the breeding method used to create this germplasm.
    11. Pedigree: The cross name and optional selection history.
    12. Synonyms: The synonyms of the accession.

## Germplasm Crosses

## Germplasm Collections
