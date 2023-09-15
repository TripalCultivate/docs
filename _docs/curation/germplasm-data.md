---
title: Germplasm Data
tags:
  - germplasm
description: This is documentation pertaining to curation, file upload and management of germplasm data within TripalCultivate.
---
# Germplasm Data
This module package enhances germplasm support in Tripal Core with support for both **Breeding Programs** and **Germplasm Genebanks**. Germplasm importers are designed to accommodate all of the metadata required to meet the [Breeding API (BrAPI)](https://brapi.org) standards.

## Germplasm Accessions
The Germplasm Accessions Importer can be accessed by going to "Administration > Tripal > Data Loaders > Tripal Cultivate: Germplasm Accessions"

### Select Genus
First, select the genus of the accessions in the file you wish to upload by selecting it from the dropdown menu. All accessions in one file must belong to the same genus and match this selection. Regardless, it is not recommended to maintain germplasm data across multiple genus within the same file, as assigned names can be re-used across genus and cause confusion during curation.

### File Format
The file should be formatted as a TSV or TXT file with up to 12 columns in the following order:
1. **Germplasm Name**: The name of the germplasm.
2. **External Database**: The name of the institution who assigned the accession. This name must already be present in the chado table `db` and match exactly.
3. **Accession Number**: A unique identifier for the germplasm accession.
4. **Germplasm Species**: The species of the accession.
5. **Germplasm Subtaxa**: Specifies the subtaxon, or can be used to store any additional taxonomic identifier.
6. **Institute Code**: The FAO WIEWS code of the institute where the accession is maintained. An FAO WIEWS Institute Code consists of the 3-letter ISO 3166-1 alpha 3 country code of the country where the institute is located plus a number (e.g. COL001, USA1004).
7. **Institute Name**: The name of the Institute that has bred the material.
8. **Country of Origin Code**: A 3-letter ISO 3166-1 code of the country in which the sample was originally collected, bred or selected. Codes can be [found here](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3).
9. **Biological Status of Accession**: The 3 digit code representing the biological status of the accession. The coding scheme for biological status can be used at two different levels of detail: either as a general code (e.g. 100, 200) or a more specific code (e.g. 110, 120).
  - 100 Wild
    - 110 Natural
    - 120 Semi-natural/wild
    - 130 Semi-natural/sown
  - 200 Weedy
  - 300 Traditional cultivar/landrace
  - 400 Breeding/research material
    - 410 Breeder’s line
    - 411 Synthetic population
    - 412 Hybrid
    - 413 Founder stock/base population
    - 414 Inbred line (parent of hybrid cultivar)
    - 415 Segregating population
    - 416 Clonal selection
    - 420 Genetic stock
    - 421 Mutant (e.g. induced/insertion mutant, tilling population)
    - 422 Cytogenetic stock (e.g. chromosome addition/substitution, aneuploid, amphiploid)
    - 423 Other genetic stock (e.g. mapping population)
  - 500 Advanced or improved cultivar (conventional breeding methods)
  - 600 GMO (by genetic engineering)
  - 999 Other
10. **Breeding Method**: The unique identifier for the breeding method used to create this germplasm.
11. **Pedigree**: The parental selection history of this germplasm. It is recommended to use the format: `maternal-parental\paternal-parent`
12. **Synonyms**: A list of alternative names or IDs used to reference this germplasm. Multiple synonyms can be separated using commas or semicolons (eg. `synonym1,synonym2`).

## Germplasm Crosses

## Germplasm Collections
